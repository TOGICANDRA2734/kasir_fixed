import 'package:dewakoding_kasir/app/domain/entity/order.dart';
import 'package:dewakoding_kasir/app/domain/entity/payment_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_response.freezed.dart';
part 'order_response.g.dart';

@freezed
sealed class OrderResponse with _$OrderResponse {
  const factory OrderResponse.model(
      {int? id,
      required String name,
      @JsonKey(name: 'no_meja') required String noMeja,

      // String? email,
      // required String gender,
      // String? birthday,
      // String? phone,
      @JsonKey(name: 'total_price') String? totalPrice,
      String? notes,
      @JsonKey(name: 'payment_method') PaymentMethodEntity? paymentMethod,
      @JsonKey(name: 'payment_method_id') String? paymentMethodId,
      @JsonKey(name: 'paid_amount') String? paidAmount,
      @JsonKey(name: 'change_amount') String? changeAmount,
      required List<OrderResponseItemModel> items,
      @JsonKey(name: 'updated_at') String? updatedAt}) = OrderResponseModel;

  const factory OrderResponse.itemModel(
          {@JsonKey(name: 'product_id') required String productId,
          @JsonKey(name: 'product_name') required String productName,
          required String quantity,
          @JsonKey(name: 'unit_price') required String unitPrice}) =
      OrderResponseItemModel;

  factory OrderResponse.fromJson(Map<String, Object> json) =>
      _$OrderResponseFromJson(json);

  // OrderEntity toEntity(OrderResponseModel orderResponseModel) {
  //   final json = orderResponseModel.toJson();
  //
  //   // Manually handle type conversion if needed
  //   final adjustedJson = {
  //     ...json,
  //     'total_price': int.tryParse(json['total_price'] ?? '0') ?? 0,
  //     'payment_method_id': int.tryParse(json['payment_method_id'] ?? '0') ?? 0,
  //     'paid_amount': int.tryParse(json['paid_amount'] ?? '0') ?? 0,
  //     'change_amount': int.tryParse(json['change_amount'] ?? '0') ?? 0,
  //     'items': (json['items'] as List<dynamic>).map((itemJson) {
  //       final item =
  //           OrderResponseItemModel.fromJson(itemJson as Map<String, dynamic>);
  //       return {
  //         ...itemJson,
  //         'product_id': int.tryParse(item.productId) ?? 0,
  //         'quantity': int.tryParse(item.quantity) ?? 0,
  //         'unit_price': int.tryParse(item.unitPrice) ?? 0,
  //       };
  //     }).toList(),
  //   };
  //
  //   return OrderEntity.fromJson(adjustedJson);
  // }

}

extension OrderResponseModelExtension on OrderResponseModel {
  OrderEntity toEntity() {
    return OrderEntity(
      id: id,
      name: name,
      noMeja: noMeja,
      // email: email,
      // gender: gender,
      // birthday: birthday,
      // phone: phone,
      totalPrice: (totalPrice == null) ? null : int.tryParse(totalPrice!),
      notes: notes,
      paymentMethod: paymentMethod,
      paymentMethodId: (paymentMethodId == null) ? null : int.tryParse(paymentMethodId!),
      paidAmount: (paidAmount == null) ? null : int.tryParse(paidAmount!),
      changeAmount: (changeAmount == null) ? null : int.tryParse(changeAmount!),
      items: items.map((item) => item.toEntity()).toList(),
      updatedAt: updatedAt,
    );
  }
}

extension OrderResponseItemModelExtension on OrderResponseItemModel {
  OrderItemEntity toEntity() {
    return OrderItemEntity(
      productId: int.parse(productId),
      productName: productName,
      quantity: int.parse(quantity),
      unitPrice: int.parse(unitPrice),
    );
  }
}
