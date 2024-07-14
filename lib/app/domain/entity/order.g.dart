// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$OrderEntityImpl _$$OrderEntityImplFromJson(Map<String, dynamic> json) =>
    _$OrderEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      noMeja: json['no_meja'] as String,
      totalPrice: (json['total_price'] as num?)?.toInt(),
      notes: json['notes'] as String?,
      paymentMethod: json['payment_method'] == null
          ? null
          : PaymentMethodEntity.fromJson(
              json['payment_method'] as Map<String, dynamic>),
      paymentMethodId: (json['payment_method_id'] as num?)?.toInt(),
      paidAmount: (json['paid_amount'] as num?)?.toInt(),
      changeAmount: (json['change_amount'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedAt: json['updated_at'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OrderEntityImplToJson(_$OrderEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'no_meja': instance.noMeja,
      'total_price': instance.totalPrice,
      'notes': instance.notes,
      'payment_method': instance.paymentMethod?.toJson(),
      'payment_method_id': instance.paymentMethodId,
      'paid_amount': instance.paidAmount,
      'change_amount': instance.changeAmount,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt,
      'runtimeType': instance.$type,
    };

_$OrderItemEntityImpl _$$OrderItemEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderItemEntityImpl(
      productId: (json['product_id'] as num).toInt(),
      productName: json['product_name'] as String,
      quantity: (json['quantity'] as num).toInt(),
      unitPrice: (json['unit_price'] as num).toInt(),
      barcode: json['barcode'] as String?,
      stock: (json['stock'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OrderItemEntityImplToJson(
        _$OrderItemEntityImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'product_name': instance.productName,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'barcode': instance.barcode,
      'stock': instance.stock,
      'runtimeType': instance.$type,
    };
