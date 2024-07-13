import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method.freezed.dart';
part 'payment_method.g.dart';

@freezed
sealed class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod.entity(
      {required int id,
      required String name}) = PaymentMethodEntity;

  factory PaymentMethod.fromJson(Map<String, Object> json) => _$PaymentMethodFromJson(json);
}
