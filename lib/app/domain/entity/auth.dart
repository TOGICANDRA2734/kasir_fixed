import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
sealed class Auth with _$Auth {
  const factory Auth.paramEntity(
      {required String email, required String password}) = AuthParamEntity;

  factory Auth.fromJson(Map<String, Object> json) => _$AuthFromJson(json);
}
