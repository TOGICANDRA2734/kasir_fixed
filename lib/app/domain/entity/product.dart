import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
sealed class Product with _$Product {
  const factory Product.entity(
      {required int id,
      required String name,
      @JsonKey(name: 'category_id') required String categoryId,
      required int stock,
      required int price,
      @JsonKey(name: 'image_url') String? imageUrl,
      String? barcode,
      @JsonKey(name: 'is_active') required bool isActive}) = ProductEntity;

  factory Product.fromJson(Map<String, Object> json) => _$ProductFromJson(json);
}
