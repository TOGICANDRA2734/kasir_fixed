import 'package:dewakoding_kasir/app/domain/entity/order.dart';
import 'package:dewakoding_kasir/app/domain/entity/setting.dart';
import 'package:dewakoding_kasir/app/domain/usecase/setting_get.dart';
import 'package:dewakoding_kasir/core/helper/date_time_helper.dart';
import 'package:dewakoding_kasir/core/helper/number_helper.dart';
import 'package:dewakoding_kasir/core/provider/app_provider.dart';
import 'package:esc_pos_utils_plus/esc_pos_utils_plus.dart';
import 'package:print_bluetooth_thermal/print_bluetooth_thermal.dart';

class PrintInvoiceNotifier extends AppProvider {
  final SettingGetUseCase _settingGetUseCase;
  final OrderEntity _order;

  PrintInvoiceNotifier(this._settingGetUseCase, this._order) {
    init();
  }

  SettingEntity? _settingStore;
  List<BluetoothInfo> _listBluetooth = [];

  List<BluetoothInfo> get listBluetooth => _listBluetooth;

  @override
  void init() async {
    await _getSetting();
    await _getBluetoothStatus();
    if (errorMessage.isEmpty) await _getBluetoothPired();
  }

  _getSetting() async {
    showLoading();
    final response = await _settingGetUseCase();
    if (response.success) {
      _settingStore = response.data;
    }
    hideLoading();
  }

  _getBluetoothStatus() async {
    showLoading();
    if (!await PrintBluetoothThermal.isPermissionBluetoothGranted) {
      errorMessage = "Harap berikan perizinan bluetooth";
    } else if (!await PrintBluetoothThermal.bluetoothEnabled) {
      errorMessage = "Harap aktifkan bluetooth";
    }
    hideLoading();
  }

  _getBluetoothPired() async {
    showLoading();
    _listBluetooth = await PrintBluetoothThermal.pairedBluetooths;
    hideLoading();
  }

  print(String mac) async {
    showLoading();
    await PrintBluetoothThermal.connect(macPrinterAddress: mac);
    bool conecctionStatus = await PrintBluetoothThermal.connectionStatus;
    if (conecctionStatus) {
      List<int> ticket = await generateInvoice();
      final result = await PrintBluetoothThermal.writeBytes(ticket);
      if (result) {
        snackBarMessage = "Sukses print invoice";
      } else {
        snackBarMessage = "Gagal print invoice";
      }
    } else {
      snackBarMessage = 'Tidak dapat terhubung pada bluetooth yang dipilih';
    }
    hideLoading();
  }

  Future<List<int>> generateInvoice() async {
    final date = DateTimeHelper.formatDateTime(
        dateTime: DateTime.now(), format: 'dd MMMM yyyy HH:mm:ss');
    final Generator ticket =
        Generator(PaperSize.mm58, await CapabilityProfile.load());
    List<int> bytes = [];

    // Print image
    // final ByteData data = await rootBundle.load('assets/rabbit_black.jpg');
    // final Uint8List imageBytes = data.buffer.asUint8List();
    // final Image? image = decodeImage(imageBytes);
    // bytes += ticket.image(image);

    if (_settingStore?.shop?.isNotEmpty ?? false) {
      String shopName = _settingStore?.shop ?? '-';
      if (shopName.contains('Tarik')) {
        List<String> parts = shopName.split('Tarik');
        bytes += ticket.text(parts[0].trim(),
            styles: PosStyles(
              align: PosAlign.center,
              height: PosTextSize.size2,
              width: PosTextSize.size2,
            ));
        bytes += ticket.text('Tarik',
            styles: PosStyles(
              align: PosAlign.center,
              height: PosTextSize.size2,
              width: PosTextSize.size2,
            ));
      } else {
        bytes += ticket.text(shopName,
            styles: PosStyles(
              align: PosAlign.center,
              height: PosTextSize.size2,
              width: PosTextSize.size2,
            ));
      }
    }
    if (_settingStore?.address?.isNotEmpty ?? false)
      bytes += ticket.text(_settingStore!.address!,
          styles: PosStyles(align: PosAlign.center));
    if (_settingStore?.phone?.isNotEmpty ?? false)
      bytes += ticket.text('Telp : ' + _settingStore!.phone!,
          styles: PosStyles(align: PosAlign.center));
    bytes += ticket.feed(1);
    bytes += ticket.text(date, styles: PosStyles(align: PosAlign.center));

    bytes += ticket.feed(2);
    bytes += ticket.hr(ch: '=');
    bytes += ticket.text('Produk dipesan',
        styles: PosStyles(align: PosAlign.center));
    bytes += ticket.hr(ch: '=');

    _order.items.forEach(
      (element) {
        bytes += ticket.text('${element.productName}', styles: PosStyles());
        bytes += ticket.row([
          PosColumn(text: '', width: 4),
          PosColumn(
              text: NumberHelper.formatNumber(element.unitPrice, '#,###'),
              width: 3,
              styles: PosStyles(align: PosAlign.right)),
          PosColumn(
              text: '${element.quantity}',
              width: 2,
              styles: PosStyles(align: PosAlign.right)),
          PosColumn(
              text: NumberHelper.formatNumber(
                  element.quantity * element.unitPrice, '#,###'),
              width: 3,
              styles: PosStyles(align: PosAlign.right)),
        ]);
      },
    );

    bytes += ticket.hr();

    bytes += ticket.row([
      PosColumn(
          text: 'TOTAL',
          width: 6,
          styles: PosStyles(
            align: PosAlign.right,
          )),
      PosColumn(
          text: NumberHelper.formatNumber(_order.totalPrice ?? 0, '#,###'),
          width: 6,
          styles: PosStyles(
            align: PosAlign.right,
          )),
    ]);

    bytes += ticket.hr(ch: '=');

    bytes += ticket.row([
      PosColumn(
          text: 'Paid', width: 6, styles: PosStyles(align: PosAlign.right)),
      PosColumn(
          text: NumberHelper.formatNumber(_order.paidAmount ?? 0, '#,###'),
          width: 6,
          styles: PosStyles(align: PosAlign.right)),
    ]);
    bytes += ticket.row([
      PosColumn(
          text: 'Change', width: 6, styles: PosStyles(align: PosAlign.right)),
      PosColumn(
          text: NumberHelper.formatNumber(_order.changeAmount ?? 0, '#,###'),
          width: 6,
          styles: PosStyles(align: PosAlign.right)),
    ]);

    bytes += ticket.feed(1);
    bytes +=
        ticket.text('Terima kasih', styles: PosStyles(align: PosAlign.center));
    bytes += ticket.text('Selamat datang kembali',
        styles: PosStyles(align: PosAlign.center), linesAfter: 2);

    // Print QR Code from image
    // try {
    //   const String qrData = 'example.com';
    //   const double qrSize = 200;
    //   final uiImg = await QrPainter(
    //     data: qrData,
    //     version: QrVersions.auto,
    //     gapless: false,
    //   ).toImageData(qrSize);
    //   final dir = await getTemporaryDirectory();
    //   final pathName = '${dir.path}/qr_tmp.png';
    //   final qrFile = File(pathName);
    //   final imgFile = await qrFile.writeAsBytes(uiImg.buffer.asUint8List());
    //   final img = decodeImage(imgFile.readAsBytesSync());

    //   bytes += ticket.image(img);
    // } catch (e) {
    //   print(e);
    // }

    // Print QR Code using native function
    // bytes += ticket.qrcode('example.com');

    ticket.feed(2);
    return bytes;
  }
}
