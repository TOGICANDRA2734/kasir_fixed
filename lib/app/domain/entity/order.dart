import 'package:dewakoding_kasir/app/domain/entity/payment_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
sealed class Order with _$Order {
  @JsonSerializable(explicitToJson: true)
  factory Order() = _Order;

  @JsonSerializable(explicitToJson: true)
  factory Order.entity(
      {int? id,
      required String name,
      String? email,
      required String gender,
      String? birthday,
      String? phone,
      @JsonKey(name: 'total_price') int? totalPrice,
      String? notes,
      @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
      @JsonKey(name: 'payment_method_id') int? paymentMethodId,
      @JsonKey(name: 'paid_amount') int? paidAmount,
      @JsonKey(name: 'change_amount') int? changeAmount,
      required List<OrderItemEntity> items,
      @JsonKey(name: 'updated_at') String? updatedAt}) = OrderEntity;

  const factory Order.itemEntity(
      {@JsonKey(name: 'product_id') required int productId,
      @JsonKey(name: 'product_name') required String productName,
      required int quantity,
      @JsonKey(name: 'unit_price') required int unitPrice,
      String? barcode,
      int? stock}) = OrderItemEntity;

  factory Order.fromJson(Map<String, Object> json) => _$OrderFromJson(json);
}
