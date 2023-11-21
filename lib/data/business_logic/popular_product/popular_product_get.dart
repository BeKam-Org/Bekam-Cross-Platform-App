import 'package:bekam/data/business_logic/popular_product/popular_product_get_state.dart';
import 'package:bekam/data/model/network_exception/network_exception.dart';
import 'package:bekam/data/model/product_model/product_model.dart';
import 'package:bekam/data/repository/popular_product_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A [Cubit] responsible for managing the state of popular product data fetching.
///
/// This Cubit communicates with the UI to provide different states like [Idle], [Loading],
/// [Success], and [Error] based on the asynchronous data fetching operation.
class PopularProductGetCubit
    extends Cubit<PopularProductGetState<ProductModel>> {
  /// The repository responsible for handling popular products-related data operations.
  final PopularProductRepository productRepository;

  /// Constructor for [PopularProductGetCubit] that takes an instance of [PopularProductRepository].
  PopularProductGetCubit(this.productRepository) : super(const Idle());

  /// Fetches the popular products and updates the state accordingly.
  ///
  /// On successful fetching, emits [PopularProductGetState.success] with the list of [Product].
  /// On failure, emits [PopularProductGetState.error] with [NetworkExceptions] details.
  void getPopularProductList(
      {required int limit,
      required String type,
      required String offset}) async {
    // Fetch Set Menu list from the repository.
    var data = await productRepository.getPopularProductList(
        limit: limit, type: type, offset: offset);
        
    // Process the result and emit the corresponding state.
    data.when(success: (ProductModel searchResult) {
      emit(PopularProductGetState.success(searchResult));
    }, failure: (NetworkExceptions networkExceptions) {
      emit(PopularProductGetState.error(networkExceptions));
    });
  }
}
