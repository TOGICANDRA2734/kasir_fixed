import 'package:dewakoding_kasir/app/domain/entity/category.dart';
import 'package:dewakoding_kasir/app/domain/repository/category_repository.dart';
import 'package:dewakoding_kasir/core/network/data_state.dart';
import 'package:dewakoding_kasir/core/usecase/app_use_case.dart';

class CategoryGetActiveUseCase
    extends AppUseCase<Future<DataState<List<CategoryEntity>>>, void> {
  final CategoryRepository _categoryRepository;

  CategoryGetActiveUseCase(this._categoryRepository);

  @override
  Future<DataState<List<CategoryEntity>>> call({void param}) async {
    final response = await _categoryRepository.getAll();
    if (response.success) {
      final listCategoryActive = response.data!
          .where(
            (element) => element.isActive,
          )
          .toList();
      return SuccessState(message: response.message, data: listCategoryActive);
    } else {
      return response;
    }
  }
}
