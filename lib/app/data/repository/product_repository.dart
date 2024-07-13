import 'package:dewakoding_kasir/app/data/source/product_api_service.dart';
import 'package:dewakoding_kasir/app/domain/entity/product.dart';
import 'package:dewakoding_kasir/app/domain/repository/product_repository.dart';
import 'package:dewakoding_kasir/core/network/data_state.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductApiService _productApiService;

  ProductRepositoryImpl(this._productApiService);

  @override
  Future<DataState<List<ProductEntity>>> getAll() async {
    return handleResponse(
      () => _productApiService.getAll(),
      (data) => List<ProductEntity>.from(
          data.map((item) => ProductEntity.fromJson(item))).toList(),
    );
  }

  @override
  Future<DataState<ProductEntity>> getById(int id) {
    return handleResponse(
      () => _productApiService.getById(id: id),
      (json) => ProductEntity.fromJson(json),
    );
  }

  @override
  Future<DataState<ProductEntity>> getByBarcode(String barcode) {
    return handleResponse(
      () => _productApiService.getByBarcode(barcode: barcode),
      (json) => ProductEntity.fromJson(json),
    );
  }
}
