import 'package:bekam/data/cubit/product_search_state.dart';
import 'package:bekam/data/model/search_result_model.dart';
import 'package:bekam/data/repository/network_exception.dart';
import 'package:bekam/data/repository/serach_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductSearchCubit extends Cubit<SearchResultState<SearchResultModel>> {
  final SearchRepository searchRepository;
  ProductSearchCubit(this.searchRepository) : super(const Idle());

  void getSearchResults(
      {required String searchKey, required String region}) async {
    var data = await searchRepository.getSearchResults(
        searchKey: searchKey, region: region);

    data.when(success: (SearchResultModel searchResult) {
      emit(SearchResultState.success(searchResult));
    }, failure: (NetworkExceptions networkExceptions) {
      emit(SearchResultState.error(networkExceptions));
    });
  }
}
