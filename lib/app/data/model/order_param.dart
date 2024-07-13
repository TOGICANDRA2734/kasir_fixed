import 'package:dewakoding_kasir/app/domain/entity/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_param.freezed.dart';
part 'order_param.g.dart';

@freezed
sealed class OrderParam with _$OrderParam {
  const factory OrderParam.model(
      {required String name,
      String? email,
      required String gender,
      String? birthday,
      String? phone,
      @JsonKey(name: 'total_price') required int totalPrice,
      String? notes,
      @JsonKey(name: 'payment_method_id')
      required int paymentMethodId,
      @JsonKey(name: 'paid_amount') required int paidAmount,
      @JsonKey(name: 'change_amount') required int changeAmount,
      required List<OrderParamItemModel> items}) = OrderParamModel;

  const factory OrderParam.itemModel(
          {@JsonKey(name: 'product_id') required int productId,
          required int quantity,
          @JsonKey(name: 'unit_price') required int unitPrice}) =
      OrderParamItemModel;

  factory OrderParam.fromJson(Map<String, Object> json) =>
      _$OrderParamFromJson(json);
}
