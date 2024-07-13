import 'package:dewakoding_kasir/app/domain/entity/category.dart';
import 'package:dewakoding_kasir/app/domain/repository/category_repository.dart';
import 'package:dewakoding_kasir/core/network/data_state.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  @override
  Future<DataState<List<CategoryEntity>>> getAll() async {
    return SuccessState(data: [
      CategoryEntity(id: 1, name: "Hidangan Pembuka", isActive: true),
      CategoryEntity(id: 2, name: "Minuman", isActive: true),
      CategoryEntity(id: 3, name: "Hidangan Utama", isActive: false),
      CategoryEntity(id: 12, name: "Hidangan Penutup", isActive: false),
      CategoryEntity(id: 1, name: "Minuman Panas", isActive: true)
    ]);
  }
}
