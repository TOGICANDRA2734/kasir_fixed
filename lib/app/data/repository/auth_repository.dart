import 'package:dewakoding_kasir/app/data/model/auth_model.dart';
import 'package:dewakoding_kasir/app/data/source/auth_api_service.dart';
import 'package:dewakoding_kasir/app/domain/entity/auth.dart';
import 'package:dewakoding_kasir/app/domain/repository/auth_repository.dart';
import 'package:dewakoding_kasir/core/constant/constant.dart';
import 'package:dewakoding_kasir/core/helper/shared_preferences_helper.dart';
import 'package:dewakoding_kasir/core/network/data_state.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthApiService _authApiService;

  AuthRepositoryImpl(this._authApiService);

  @override
  Future<DataState> login(AuthParamEntity param) {
    return handleResponse(
      () => _authApiService.login(param: param.toJson()),
      (p0) async {
        final data = AuthModel.fromJson(p0);
        await SharedPreferencesHelper.setString(
            PREF_AUTH, '${data.tokenType} ${data.accessToken}');
        await SharedPreferencesHelper.setInt(PREF_ID, data.user.id);
        await SharedPreferencesHelper.setString(PREF_NAME, data.user.name);
        await SharedPreferencesHelper.setString(PREF_EMAIL, data.user.email);
      },
    );
  }
}
