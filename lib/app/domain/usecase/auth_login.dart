import 'package:dewakoding_kasir/app/domain/entity/auth.dart';
import 'package:dewakoding_kasir/app/domain/repository/auth_repository.dart';
import 'package:dewakoding_kasir/core/network/data_state.dart';
import 'package:dewakoding_kasir/core/usecase/app_use_case.dart';

class AuthLoginUseCase extends AppUseCase<Future<DataState>, AuthParamEntity> {
  final AuthRepository _authRepository;

  AuthLoginUseCase(this._authRepository);

  @override
  Future<DataState> call({AuthParamEntity? param}) {
    return _authRepository.login(param!);
  }
}
