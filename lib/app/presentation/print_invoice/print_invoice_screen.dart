import 'package:dewakoding_kasir/app/domain/entity/order.dart';
import 'package:dewakoding_kasir/app/presentation/print_invoice/print_invoice_notifier.dart';
import 'package:dewakoding_kasir/core/helper/global_helper.dart';
import 'package:dewakoding_kasir/core/widget/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:print_bluetooth_thermal/print_bluetooth_thermal.dart';

class PrintInvoiceScreen
    extends AppWidget<PrintInvoiceNotifier, OrderEntity, void> {
  PrintInvoiceScreen({required super.param1});

  @override
  AppBar? appBarBuild(BuildContext context) {
    return AppBar(
      title: Text("Cetak invoice"),
    );
  }

  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 75,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Order berhasil disimpan",
                  style: GlobalHelper.getTextTheme(context,
                      appTextStyle: AppTextStyle.TITLE_LARGE),
                ),
                SizedBox(
                  height: 50,
                ),
                _printerLayout(context)
              ],
            )));
  }

  _printerLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Daftar printer", style: GlobalHelper.getTextTheme(context, appTextStyle: AppTextStyle.TITLE_MEDIUM),),
        SizedBox(height: 10,),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) => SizedBox(
            height: 5,
          ),
          itemCount: notifier.listBluetooth.length,
          itemBuilder: (context, index) {
            final item = notifier.listBluetooth[index];
            return _itemLayout(context, item);
          },
        ),
      ],
    );
  }

  _itemLayout(BuildContext context, BluetoothInfo item) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: GlobalHelper.getColorSchema(context).outlineVariant)),
      child: Row(
        children: [
          Icon(Icons.bluetooth_connected),
          SizedBox(
            width: 5,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(item.name), Text(item.macAdress)],
          )),
          SizedBox(
            width: 5,
          ),
          FilledButton(
              onPressed: () => _onPressPrint(item.macAdress),
              child: Text("Print"))
        ],
      ),
    );
  }

  _onPressPrint(String macAdress) {
    notifier.print(macAdress);
  }
}
