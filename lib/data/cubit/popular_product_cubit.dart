import 'package:bekam/data/cubit/popular_product_state.dart';
import 'package:bekam/data/model/product_model.dart';
import 'package:bekam/data/repository/network_exception.dart';
import 'package:bekam/data/repository/product_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularProductCubit extends Cubit<PopularProductState<ProductModel>> {
  final ProductRepository productRepository;
  PopularProductCubit(this.productRepository) : super(const Idle());

  void getPopularProductList(
      {required int limit,
      required String type,
      required String offset}) async {
    var data = await productRepository.getPopularProductList(
        limit: limit, type: type, offset: offset);

    data.when(success: (ProductModel searchResult) {
      emit(PopularProductState.success(searchResult));
    }, failure: (NetworkExceptions networkExceptions) {
      emit(PopularProductState.error(networkExceptions));
    });
  }
}
