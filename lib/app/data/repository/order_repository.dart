import 'package:dewakoding_kasir/app/data/model/order_param.dart';
import 'package:dewakoding_kasir/app/data/model/order_response.dart';
import 'package:dewakoding_kasir/app/data/source/order_api_service.dart';
import 'package:dewakoding_kasir/app/domain/entity/order.dart' as orderEntity;
import 'package:dewakoding_kasir/app/domain/repository/order_repository.dart';
import 'package:dewakoding_kasir/core/network/data_state.dart';

class OrderRepositoryImpl extends OrderRepository {
  final OrderApiService _orderApiService;

  OrderRepositoryImpl(this._orderApiService);

  @override
  Future<DataState<List<orderEntity.OrderEntity>>> getAll() {
    return handleResponse(() => _orderApiService.getAll(), (json) {
      final listResponseModel = List<OrderResponseModel>.from(
          json.map((item) => OrderResponseModel.fromJson(item)));
      return List<orderEntity.OrderEntity>.from(
          listResponseModel.map((item) => item.toEntity()));
    });
  }

  @override
  Future<DataState> insert(orderEntity.OrderEntity param) {
    return handleResponse(
      () {
        final paramJson = param.toJson();
        return _orderApiService.insert(
            param: OrderParamModel.fromJson(paramJson).toJson());
      },
      (json) => null,
    );
  }

  @override
  Future<DataState<orderEntity.OrderEntity>> getById(int id) {
    return handleResponse(() => _orderApiService.getById(id: id),
        (json) => OrderResponseModel.fromJson(json).toEntity());
  }

  @override
  Future<DataState> update(orderEntity.OrderEntity param) {
    return handleResponse(
      () {
        final paramJson = param.toJson();
        return _orderApiService.update(
            id: param.id!, param: OrderParamModel.fromJson(paramJson).toJson());
      },
      (json) => null,
    );
  }
}
