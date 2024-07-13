// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingImpl _$$SettingImplFromJson(Map<String, dynamic> json) =>
    _$SettingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SettingImplToJson(_$SettingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$SettingEntityImpl _$$SettingEntityImplFromJson(Map<String, dynamic> json) =>
    _$SettingEntityImpl(
      shop: json['shop'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SettingEntityImplToJson(_$SettingEntityImpl instance) =>
    <String, dynamic>{
      'shop': instance.shop,
      'address': instance.address,
      'phone': instance.phone,
      'runtimeType': instance.$type,
    };
