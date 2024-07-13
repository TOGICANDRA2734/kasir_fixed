import 'package:dewakoding_kasir/app/domain/entity/order.dart';
import 'package:dewakoding_kasir/app/domain/usecase/order_insert.dart';
import 'package:dewakoding_kasir/app/domain/usecase/order_update.dart';
import 'package:dewakoding_kasir/app/domain/usecase/payment_method_get_all.dart';
import 'package:dewakoding_kasir/core/provider/app_provider.dart';
import 'package:flutter/material.dart';

class CheckoutNotifier extends AppProvider {
  final OrderInsertUseCase _orderInsertUseCase;
  final OrderUpdateUseCase _orderUpdateUseCase;
  final PaymentMethodGetAllUseCase _paymentMethodGetAllUseCase;

  CheckoutNotifier(
    this._orderInsertUseCase,
    this._paymentMethodGetAllUseCase,
    this._orderUpdateUseCase,
    this._order,
  ) {
    init();
  }
  bool _isDone = false;
  OrderEntity _order;
  List<DropdownMenuEntry<int>> _paymentMethodListDropdown = [];
  int? _initialPaymentMethod;
  TextEditingController _totalPriceController = TextEditingController();
  TextEditingController _paymentMethodController = TextEditingController();
  TextEditingController _paidAmountController = TextEditingController();
  TextEditingController _changeAmountController = TextEditingController();

  bool get isDone => _isDone;

  OrderEntity get order => _order;

  List<DropdownMenuEntry<int>> get paymentMethodListDropdown =>
      _paymentMethodListDropdown;

  int? get initialPaymentMethod => _initialPaymentMethod;

  TextEditingController get totalPriceController => _totalPriceController;

  TextEditingController get paymentMethodController => _paymentMethodController;

  TextEditingController get paidAmountController => _paidAmountController;

  TextEditingController get changeAmountController => _changeAmountController;

  @override
  void init() async {
    await _getPaymentMethod();
    _updateValuePayment();
  }

  _getPaymentMethod() async {
    showLoading();
    final response = await _paymentMethodGetAllUseCase();
    if (response.success) {
      _paymentMethodListDropdown = List<DropdownMenuEntry<int>>.from(response
          .data!
          .map((item) => DropdownMenuEntry(value: item.id, label: item.name)));
    } else {
      errorMessage = response.message;
    }
    hideLoading();
  }

  _updateValuePayment() {
    int tempTotalPrice = 0;
    order.items.forEach(
      (element) => tempTotalPrice += element.quantity * element.unitPrice,
    );
    _totalPriceController.text = tempTotalPrice.toString();

    _paidAmountController.text = order.paidAmount?.toString() ?? '0';

    updateChangeAmount();

    _initialPaymentMethod = order.paymentMethodId;
  }

  updateChangeAmount() {
    _changeAmountController.text = (int.parse(_paidAmountController.text) -
            int.parse(_totalPriceController.text))
        .toString();
    notifyListeners();
  }

  sendOrder() async {
    showLoading();
    final totalPrice = int.parse(_totalPriceController.text);
    final paymentMethodId = (_paymentMethodController.text.isNotEmpty)
        ? _paymentMethodListDropdown
            .where((element) => element.label == _paymentMethodController.text)
            .first
            .value
        : 0;
    final paidAmount = int.parse(_paidAmountController.text);
    final changeAmount = int.parse(_changeAmountController.text);
    _order = _order.copyWith(
        totalPrice: totalPrice,
        paymentMethodId: paymentMethodId,
        paidAmount: paidAmount,
        changeAmount: changeAmount);
    final response = (order.id == null)
        ? await _orderInsertUseCase(param: _order)
        : await _orderUpdateUseCase(param: _order);
    if (response.success) {
      snackBarMessage = response.message;
      _isDone = true;
    } else {
      snackBarMessage = response.message;
    }
    hideLoading();
  }
}
