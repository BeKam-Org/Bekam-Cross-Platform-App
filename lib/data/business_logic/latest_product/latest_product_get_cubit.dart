// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:bekam/data/business_logic/latest_product/latest_product_get_state.dart';
import 'package:bekam/data/model/network_exception/network_exception.dart';
import 'package:bekam/data/model/product_model/product_model.dart';
import 'package:bekam/data/repository/latest_product_repo.dart';

/// A [Cubit] responsible for managing the state of Latest Product data fetching.
///
/// This Cubit communicates with the UI to provide different states like [Idle], [Loading],
/// [Success], and [Error] based on the asynchronous data fetching operation.
class LatestProductGetCubit extends Cubit<LatestProductGetState<ProductModel>> {
  /// The repository responsible for handling Latest products-related data operations.
  final LatestProductRepository productRepository;

  /// Constructor for [LatestProductGetCubit] that takes an instance of [LatestProductRepository].
  LatestProductGetCubit(this.productRepository) : super(const Idle());

  /// Fetches the Latest Product product model and updates the state accordingly.
  ///
  /// On successful fetching, emits [LatestProductGetState.success] with the list of [Product].
  /// On failure, emits [LatestProductGetState.error] with [NetworkExceptions] details.
  void getLatestProductList(
      {required int limit, required String offset}) async {
    // Fetch latest product product model from the repository.
    var data = await productRepository.getLatestProductList(
        limit: limit, offset: offset);

    // Process the result and emit the corresponding state.
    data.when(success: (ProductModel searchResult) {
      emit(LatestProductGetState.success(searchResult));
    }, failure: (NetworkExceptions networkExceptions) {
      emit(LatestProductGetState.error(networkExceptions));
    });
  }
}
