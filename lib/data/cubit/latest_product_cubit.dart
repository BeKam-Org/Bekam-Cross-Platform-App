import 'package:bekam/data/cubit/latest_product_state.dart';
import 'package:bekam/data/model/product_model.dart';
import 'package:bekam/data/repository/network_exception.dart';
import 'package:bekam/data/repository/product_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LatestProductCubit extends Cubit<LatestProductState<ProductModel>> {
  final ProductRepository productRepository;
  LatestProductCubit(this.productRepository) : super(const Idle());

  void getLatestProductList(
      {required int limit,
      required String offset}) async {
    var data = await productRepository.getLatestProductList(
        limit: limit, offset: offset);

    data.when(success: (ProductModel searchResult) {
      emit(LatestProductState.success(searchResult));
    }, failure: (NetworkExceptions networkExceptions) {
      emit(LatestProductState.error(networkExceptions));
    });
  }
}
