// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthParamEntityImpl _$$AuthParamEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthParamEntityImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$AuthParamEntityImplToJson(
        _$AuthParamEntityImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
