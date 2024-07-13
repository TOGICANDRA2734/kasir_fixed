import 'package:flutter/cupertino.dart';

abstract class AppProvider with ChangeNotifier{
  bool _isDispose = false;
  bool _isLoading = false;
  String _errorMessage = "";
  String _snackBarMessage = "";

  bool get isDispose => _isDispose;

  bool get isLoading => _isLoading;

  String get errorMessage => _errorMessage;
  String get snackBarMessage => _snackBarMessage;

  set errorMessage(String param) => _errorMessage = param;
  set snackBarMessage(String param) => _snackBarMessage = param;

  void showLoading() {
    _isLoading = true;
    notifyListeners();
  }

  void hideLoading() {
    _isLoading = false;
    if (!_isDispose) notifyListeners();
  }

  void resetErrorMessage() {
    _errorMessage = "";
    notifyListeners();
  }

  void init();

  @override
  void dispose() {
    _isDispose = true;
    super.dispose();
  }
}