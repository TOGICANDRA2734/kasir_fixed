import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
sealed class Category with _$Category {
  @JsonSerializable(explicitToJson: true)
  factory Category() = _Category;

  @JsonSerializable(explicitToJson: true)
  factory Category.entity(
      {required int id,
      required String name,
      @JsonKey(name: 'is_active') required bool isActive}) = CategoryEntity;

  factory Category.fromJson(Map<String, Object> json) =>
      _$CategoryFromJson(json);
}
