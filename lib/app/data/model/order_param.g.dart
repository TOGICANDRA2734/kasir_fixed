// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderParamModelImpl _$$OrderParamModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderParamModelImpl(
      name: json['name'] as String,
      noMeja: json['no_meja'] as String,
      totalPrice: (json['total_price'] as num).toInt(),
      notes: json['notes'] as String?,
      paymentMethodId: (json['payment_method_id'] as num).toInt(),
      paidAmount: (json['paid_amount'] as num).toInt(),
      changeAmount: (json['change_amount'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderParamItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OrderParamModelImplToJson(
        _$OrderParamModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'no_meja': instance.noMeja,
      'total_price': instance.totalPrice,
      'notes': instance.notes,
      'payment_method_id': instance.paymentMethodId,
      'paid_amount': instance.paidAmount,
      'change_amount': instance.changeAmount,
      'items': instance.items,
      'runtimeType': instance.$type,
    };

_$OrderParamItemModelImpl _$$OrderParamItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderParamItemModelImpl(
      productId: (json['product_id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      unitPrice: (json['unit_price'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OrderParamItemModelImplToJson(
        _$OrderParamItemModelImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'runtimeType': instance.$type,
    };
