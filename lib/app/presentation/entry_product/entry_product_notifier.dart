import 'package:dewakoding_kasir/app/domain/usecase/category_get_active.dart';
import 'package:dewakoding_kasir/app/domain/usecase/product_get_by_id.dart';
import 'package:dewakoding_kasir/core/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class EntryProductNotifier extends AppProvider {
  final ProductGetByIdUseCase _productGetByIdUseCase;
  final CategoryGetActiveUseCase _categoryGetActiveUseCase;
  final int? id;

  EntryProductNotifier(
      this._categoryGetActiveUseCase, this._productGetByIdUseCase, this.id) {
    init();
  }

  List<DropdownMenuEntry<String>> _categoryListDropdown = [];
  bool _isActive = true;
  String? _initialCategory;
  String? _imageUrl = '';
  TextEditingController _nameController = TextEditingController();
  TextEditingController _categoryController = TextEditingController();
  TextEditingController _barCodeController = TextEditingController();
  TextEditingController _stockController = TextEditingController();
  TextEditingController _priceController = TextEditingController();

  List<DropdownMenuEntry<String>> get categoryListDropdown =>
      _categoryListDropdown;

  bool get isActive => _isActive;

  TextEditingController get nameController => _nameController;
  TextEditingController get categoryController => _categoryController;
  TextEditingController get barCodeController => _barCodeController;
  TextEditingController get stockController => _stockController;
  TextEditingController get priceController => _priceController;

  String? get initialCategory => _initialCategory;
  String? get imageUrl => _imageUrl;

  set isActive(bool param) {
    _isActive = param;
    hideLoading();
  }

  @override
  void init() async {
    if (id != null) await _getProduct();
    await _getCategory();
  }

  _getProduct() async {
    showLoading();
    final response = await _productGetByIdUseCase(param: id);
    if (response.success) {
      final product = response.data!;
      _isActive = product.isActive;
      _nameController.text = product.name;
      _stockController.text = product.stock.toString();
      _priceController.text = product.price.toString();
      _initialCategory = product.categoryId;
      _imageUrl = product.imageUrl;
    } else {
      errorMessage = response.message;
    }
    hideLoading();
  }

  _getCategory() async {
    showLoading();
    final response = await _categoryGetActiveUseCase();
    if (response.success) {
      _categoryListDropdown = List<DropdownMenuEntry<String>>.from(response.data!
          .map((item) => DropdownMenuEntry(value: item.id.toString(), label: item.name)));
    } else {
      errorMessage = response.message;
    }
    hideLoading();
  }

  scan() async {
    try {
      _barCodeController.text = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
    } on PlatformException {
      errorMessage = 'Failed to get platform version.';
    }
    hideLoading();
  }

  send(){
  }
}
