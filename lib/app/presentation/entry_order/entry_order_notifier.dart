import 'dart:collection';

import 'package:dewakoding_kasir/app/domain/entity/order.dart';
import 'package:dewakoding_kasir/app/domain/usecase/order_get_by_id.dart';
import 'package:dewakoding_kasir/app/domain/usecase/product_get_by_barcode.dart';
import 'package:dewakoding_kasir/core/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class EntryOrderNotifier extends AppProvider {
  final OrderGetByIdUseCase _orderGetByIdUseCase;
  final ProductGetByBarcodeUseCase _productGetByBarcodeUseCase;

  final int? id;

  EntryOrderNotifier(
    this._orderGetByIdUseCase,
    this._productGetByBarcodeUseCase,
    this.id,
  ) {
    init();
  }

  static const String NAME = 'NAME';
  static const String GENDER = 'GENDER';

  bool _isShowDialogBuyyer = true;
  HashMap<String, String> _errorBuyer = HashMap();
  List<OrderItemEntity> _listOrderItem = [];
  final List<DropdownMenuEntry<String>> _genderListDropdown = [
    DropdownMenuEntry<String>(value: 'male', label: 'Laki-laki'),
    DropdownMenuEntry<String>(value: 'female', label: 'Perempuan')
  ];
  String? _initialGender;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _noteController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _birthDayController = TextEditingController();

  int _totalPrice = 0;
  int _paymentMethodId = 0;
  int _paidAmount = 0;
  int _changeAmount = 0;

  bool get isShowDialogBuyyer => _isShowDialogBuyyer;

  HashMap get errorBuyer => _errorBuyer;

  List<OrderItemEntity> get listOrderItem => _listOrderItem;

  List<DropdownMenuEntry<String>> get genderListDropdown => _genderListDropdown;

  String? get initialGender => _initialGender;

  TextEditingController get nameController => _nameController;

  TextEditingController get noteController => _noteController;

  TextEditingController get genderController => _genderController;

  TextEditingController get emailController => _emailController;

  TextEditingController get phoneController => _phoneController;

  TextEditingController get birthDayController => _birthDayController;

  OrderEntity get order {
    final name = _nameController.text;
    final email = _emailController.text;
    final gender = (_genderController.text.isNotEmpty)
        ? _genderListDropdown
            .where((element) => element.label == _genderController.text)
            .first
            .value
        : '';
    final birthDay = _birthDayController.text;
    final phone = _phoneController.text;
    final note = _noteController.text;

    return OrderEntity(
        id: id,
        name: name,
        email: email,
        gender: gender,
        birthday: birthDay,
        phone: phone,
        notes: note,
        totalPrice: _totalPrice,
        items: _listOrderItem,
        paidAmount: _paidAmount,
        changeAmount: _changeAmount,
        paymentMethodId: _paymentMethodId);
  }

  set isShowDialogBuyyer(bool param) => _isShowDialogBuyyer = param;

  @override
  void init() async {
    if (id != null) await _getOrder();
  }

  _getOrder() async {
    showLoading();
    final response = await _orderGetByIdUseCase(param: id);
    if (response.success) {
      final order = response.data!;
      _nameController.text = order.name;
      _initialGender = order.gender;
      _noteController.text = order.notes ?? '';
      _emailController.text = order.email ?? '';
      _phoneController.text = order.phone ?? '';
      _birthDayController.text = order.birthday ?? '';
      _listOrderItem.addAll(order.items);
      _totalPrice = order.totalPrice ?? 0;
      _paymentMethodId = order.paymentMethodId ?? 0;
      _paidAmount = order.paidAmount ?? 0;
      _changeAmount = order.changeAmount ?? 0;
    } else {
      errorMessage = response.message;
    }
    hideLoading();
  }

  updateItems(List<OrderItemEntity> items) {
    _listOrderItem.clear();
    _listOrderItem.addAll(items);
    // _updateTotalPayment();
    notifyListeners();
  }

  updateQuantity(OrderItemEntity item, int newQuantity) {
    final index = _listOrderItem.indexOf(item);
    if (newQuantity == 0) {
      _listOrderItem.removeAt(index);
      // _updateTotalPayment();
    } else {
      _listOrderItem[index] =
          _listOrderItem[index].copyWith(quantity: newQuantity);
      // _updateTotalPayment();
    }
    hideLoading();
  }

  validateBuyer() {
    showLoading();
    _errorBuyer.clear();
    if (_nameController.text.isEmpty) _errorBuyer[NAME] = 'Harus Terisi';
    if (_genderController.text.isEmpty) _errorBuyer[GENDER] = 'Harus Terisi';
    hideLoading();
  }

  scan() async {
    try {
      final barcodeText = await FlutterBarcodeScanner.scanBarcode(
          '#000000', 'Batal', true, ScanMode.BARCODE);
      if (barcodeText != '-1') {
        snackBarMessage = 'Barcode : ${barcodeText}';
        _getByBarcode(barcodeText);
      } else
        snackBarMessage = 'Scan barcode dibatalkan';
    } on PlatformException {
      snackBarMessage = 'Error saat scan barcode';
    }
    notifyListeners();
  }

  _getByBarcode(String barcodeText) async {
    showLoading();
    final response = await _productGetByBarcodeUseCase(param: barcodeText);
    if (response.success) {
      final product = response.data!;
      final index = _listOrderItem.indexWhere(
        (element) => element.productId == product.id,
      );
      if (index >= 0) {
        _listOrderItem[index] = _listOrderItem[index]
            .copyWith(quantity: _listOrderItem[index].quantity + 1);
      } else {
        _listOrderItem.add(OrderItemEntity(
            productId: product.id,
            productName: product.name,
            quantity: 1,
            unitPrice: product.price,
            barcode: product.barcode,
            stock: product.stock));
      }
    } else {
      snackBarMessage = response.message;
    }
    hideLoading();
  }
}
