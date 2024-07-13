import 'package:dewakoding_kasir/app/domain/entity/auth.dart';
import 'package:dewakoding_kasir/app/domain/usecase/auth_login.dart';
import 'package:dewakoding_kasir/core/constant/constant.dart';
import 'package:dewakoding_kasir/core/helper/shared_preferences_helper.dart';
import 'package:dewakoding_kasir/core/provider/app_provider.dart';
import 'package:flutter/cupertino.dart';

class LoginNotifier extends AppProvider {
  final AuthLoginUseCase _authLoginUseCase;

  LoginNotifier(this._authLoginUseCase) {
    init();
  }

  bool _isLogined = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _baseUrlController = TextEditingController();

  bool get isLogined => _isLogined;

  TextEditingController get emailController => _emailController;

  TextEditingController get passwordController => _passwordController;

  TextEditingController get baseUrlController => _baseUrlController;

  @override
  void init() async {
    await getBaseUrl();
    await _checkAuth();
  }

  getBaseUrl() async {
    String? baseUrl = await SharedPreferencesHelper.getString(PREF_BASE_URL);
    if (baseUrl == null) {
      await SharedPreferencesHelper.setString(
          PREF_BASE_URL, 'https://bluecode.my.id/kasir');
      baseUrl = await SharedPreferencesHelper.getString(PREF_BASE_URL);
    }

    _baseUrlController.text = baseUrl!;
  }

  _checkAuth() async {
    showLoading();
    final String? auth = await SharedPreferencesHelper.getString(PREF_AUTH);
    (auth?.isNotEmpty ?? false) ? _isLogined = true : _isLogined = false;
    hideLoading();
  }

  login() async {
    showLoading();
    final response = await _authLoginUseCase(
        param: AuthParamEntity(
            email: _emailController.text, password: _passwordController.text));
    if (response.success) {
    } else {
      snackBarMessage = response.message;
    }
    _checkAuth();
    hideLoading();
  }

  saveBaseUrl() async {
    final newBaseUrl = _baseUrlController.text;
    await SharedPreferencesHelper.setString(PREF_BASE_URL, newBaseUrl);
  }
}
