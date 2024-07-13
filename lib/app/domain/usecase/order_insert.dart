import 'package:dewakoding_kasir/app/domain/entity/order.dart';
import 'package:dewakoding_kasir/app/domain/repository/order_repository.dart';
import 'package:dewakoding_kasir/core/network/data_state.dart';
import 'package:dewakoding_kasir/core/usecase/app_use_case.dart';

class OrderInsertUseCase extends AppUseCase<Future<DataState>, OrderEntity> {
  final OrderRepository _orderRepository;

  OrderInsertUseCase(this._orderRepository);

  @override
  Future<DataState> call({OrderEntity? param}) {
    return _orderRepository.insert(param!);
  }
}
