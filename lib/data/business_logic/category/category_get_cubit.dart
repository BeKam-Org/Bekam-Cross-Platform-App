import 'package:bekam/data/business_logic/category/category_get_state.dart';
import 'package:bekam/data/model/category_model/category_model.dart';
import 'package:bekam/data/model/network_exception/network_exception.dart';
import 'package:bekam/data/repository/categories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A [Cubit] responsible for managing the state of category data fetching.
///
/// This Cubit communicates with the UI to provide different states like [Idle], [Loading],
/// [Success], and [Error] based on the asynchronous data fetching operation.
class CategoryGetCubit extends Cubit<CategoryGetState<List<CategoryModel>>> {
  /// The repository responsible for handling Category-related data operations.
  final CategoryRepository categoryRepository;

  /// Constructor for [CategoryGetCubit] that takes an instance of [CategoryRepository].
  CategoryGetCubit(this.categoryRepository) : super(const Idle());

  /// Fetches the Categories ist and updates the state accordingly.
  ///
  /// On successful fetching, emits [CategoryGetState.success] with the list of [CategoryModel].
  /// On failure, emits [CategoryGetState.error] with [NetworkExceptions] details.
  void getCategoryList() async {
    // Fetch category list from the repository.
    var data = await categoryRepository.getCategoryList();
    
    // Process the result and emit the corresponding state.
    data.when(success: (List<CategoryModel> categoryModel) {
      emit(CategoryGetState.success(categoryModel));
    }, failure: (NetworkExceptions networkExceptions) {
      emit(CategoryGetState.error(networkExceptions));
    });
  }
}
