import 'package:bekam/data/cubit/category_state.dart';
import 'package:bekam/data/model/category_model.dart';
import 'package:bekam/data/repository/categories_rpo.dart';
import 'package:bekam/data/repository/network_exception.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CategoryCubit extends Cubit<CategoryState<List<CategoryModel>>> {
  final CategoryRepository categoryRepository;
  CategoryCubit(this.categoryRepository) : super(const Idle());

  void getCategoryList() async {
    var data = await categoryRepository.getCategoryList();

    data.when(success: (List<CategoryModel> categoryModel) {
      emit(CategoryState.success(categoryModel));
    }, failure: (NetworkExceptions networkExceptions) {
      emit(CategoryState.error(networkExceptions));
    });
  }
}
