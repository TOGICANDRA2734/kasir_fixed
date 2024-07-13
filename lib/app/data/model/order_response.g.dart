// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderResponseModelImpl _$$OrderResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      email: json['email'] as String?,
      gender: json['gender'] as String,
      birthday: json['birthday'] as String?,
      phone: json['phone'] as String?,
      totalPrice: json['total_price'] as String?,
      notes: json['notes'] as String?,
      paymentMethod: json['payment_method'] == null
          ? null
          : PaymentMethodEntity.fromJson(
              json['payment_method'] as Map<String, dynamic>),
      paymentMethodId: json['payment_method_id'] as String?,
      paidAmount: json['paid_amount'] as String?,
      changeAmount: json['change_amount'] as String?,
      items: (json['items'] as List<dynamic>)
          .map(
              (e) => OrderResponseItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedAt: json['updated_at'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OrderResponseModelImplToJson(
        _$OrderResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'phone': instance.phone,
      'total_price': instance.totalPrice,
      'notes': instance.notes,
      'payment_method': instance.paymentMethod,
      'payment_method_id': instance.paymentMethodId,
      'paid_amount': instance.paidAmount,
      'change_amount': instance.changeAmount,
      'items': instance.items,
      'updated_at': instance.updatedAt,
      'runtimeType': instance.$type,
    };

_$OrderResponseItemModelImpl _$$OrderResponseItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderResponseItemModelImpl(
      productId: json['product_id'] as String,
      productName: json['product_name'] as String,
      quantity: json['quantity'] as String,
      unitPrice: json['unit_price'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OrderResponseItemModelImplToJson(
        _$OrderResponseItemModelImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'product_name': instance.productName,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'runtimeType': instance.$type,
    };
