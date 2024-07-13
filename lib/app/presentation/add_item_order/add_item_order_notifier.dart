import 'package:dewakoding_kasir/app/domain/entity/order.dart';
import 'package:dewakoding_kasir/app/domain/usecase/product_get_all.dart';
import 'package:dewakoding_kasir/core/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class AddItemOrderNotifier extends AppProvider {
  final ProductGetAllUseCase _productGetAllUseCase;
  final List<OrderItemEntity> listOrderOld;

  AddItemOrderNotifier(this._productGetAllUseCase, this.listOrderOld) {
    init();
  }

  TextEditingController _searchProductController = TextEditingController();

  List<OrderItemEntity> _listOrderItem = [];

  List<OrderItemEntity> get listOrderItem {
    if (searchProductController.text.isEmpty)
      return _listOrderItem;
    else {
      final searchText = searchProductController.text.toLowerCase();
      final listResult = _listOrderItem
          .where(
            (element) =>
                element.productName.toLowerCase().contains(searchText) ||
                (element.barcode?.contains(searchText) ?? false),
          )
          .toList();
      return listResult;
    }
  }

  List<OrderItemEntity> get listOrderItemFilteredQuantity {
    return _listOrderItem
        .where(
          (element) => element.quantity > 0,
        )
        .toList();
  }

  TextEditingController get searchProductController => _searchProductController;

  int get totalProduct {
    int total = 0;
    _listOrderItem.forEach(
      (element) => total += element.quantity,
    );
    return total;
  }

  @override
  void init() {
    _getProduct();
  }

  _getProduct() async {
    showLoading();
    final response = await _productGetAllUseCase();
    if (response.success) {
      final listProductActive = response.data!
          .where(
            (element) => element.isActive,
          )
          .toList();
      _listOrderItem = List<OrderItemEntity>.from(listProductActive.map((item) {
        final int index = listOrderOld.indexWhere(
          (element) => element.productId == item.id,
        );
        return OrderItemEntity(
            productId: item.id,
            productName: item.name,
            quantity: (index > -1) ? listOrderOld[index].quantity : 0,
            unitPrice: item.price,
            barcode: item.barcode,
            stock: item.stock);
      }));
    } else {
      errorMessage = response.message;
    }

    hideLoading();
  }

  onSubmitedSearchProduct() async {
    hideLoading();
  }

  updateQuantity(OrderItemEntity item, int newQuantity) {
    final index = _listOrderItem.indexOf(item);
    if (newQuantity >= 0) {
      _listOrderItem[index] =
          _listOrderItem[index].copyWith(quantity: newQuantity);
    }
    hideLoading();
  }

  scan() async {
    try {
      final barcodeText = await FlutterBarcodeScanner.scanBarcode(
          '#000000', 'Batal', true, ScanMode.BARCODE);
      if (barcodeText != '-1') {
        _searchProductController.text = barcodeText;
        _updateQuantityFromBarcode(barcodeText);
      } else
        snackBarMessage = 'Scan barcode dibatalkan';
    } on PlatformException {
      snackBarMessage = 'Error saat scan barcode';
    }
    notifyListeners();
  }

  _updateQuantityFromBarcode(String barcodeText) {
    final index = _listOrderItem.indexWhere(
      (element) => element.barcode == barcodeText,
    );
    if (index >= 0) {
      _listOrderItem[index] = _listOrderItem[index]
          .copyWith(quantity: _listOrderItem[index].quantity + 1);
    } else {
      snackBarMessage = "Produk (#${barcodeText}) tidak ditemukan";
    }
    notifyListeners();
  }

  clearSearchText(){
    _searchProductController.text = '';
    notifyListeners();
  }
}
