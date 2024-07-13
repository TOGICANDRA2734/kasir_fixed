import 'package:dewakoding_kasir/app/domain/entity/product.dart';
import 'package:dewakoding_kasir/app/domain/usecase/product_get_all.dart';
import 'package:dewakoding_kasir/core/provider/app_provider.dart';

class ProductNotifier extends AppProvider {
  final ProductGetAllUseCase _productGetAllUseCase;
  List<ProductEntity> _listProduct = [];

  List<ProductEntity> get listProduct => _listProduct;

  ProductNotifier(this._productGetAllUseCase) {
    init();
  }

  @override
  void init() {
    _getProduct();
  }

  _getProduct() async {
    showLoading();
    final response = await _productGetAllUseCase();
    if (response.success) {
      _listProduct = response.data!;
    } else {
      errorMessage = response.message;
    }
    hideLoading();
  }
}
