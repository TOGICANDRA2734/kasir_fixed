// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductEntityImpl _$$ProductEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProductEntityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      categoryId: json['category_id'] as String,
      stock: (json['stock'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      imageUrl: json['image_url'] as String?,
      barcode: json['barcode'] as String?,
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$$ProductEntityImplToJson(_$ProductEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category_id': instance.categoryId,
      'stock': instance.stock,
      'price': instance.price,
      'image_url': instance.imageUrl,
      'barcode': instance.barcode,
      'is_active': instance.isActive,
    };
