import 'package:dewakoding_kasir/app/domain/entity/product.dart';
import 'package:dewakoding_kasir/app/domain/repository/product_repository.dart';
import 'package:dewakoding_kasir/core/network/data_state.dart';
import 'package:dewakoding_kasir/core/usecase/app_use_case.dart';

class ProductGetByIdUseCase
    extends AppUseCase<Future<DataState<ProductEntity>>, int> {
  final ProductRepository _productRepository;

  ProductGetByIdUseCase(this._productRepository);

  @override
  Future<DataState<ProductEntity>> call({int? param}) {
    return _productRepository.getById(param!);
  }
}
