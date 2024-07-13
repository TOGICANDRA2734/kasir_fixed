import 'package:dewakoding_kasir/app/domain/entity/category.dart';
import 'package:dewakoding_kasir/core/network/data_state.dart';

abstract class CategoryRepository {
  Future<DataState<List<CategoryEntity>>> getAll();
}
