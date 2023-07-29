

import 'package:bekam/data/repository/network_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_search_state.freezed.dart';

@freezed
class SearchResultState <T> with _$SearchResultState{
  const factory SearchResultState.idle() = Idle<T>;

  const factory SearchResultState.loading() = Loading<T>;

  const factory SearchResultState.success(T data) = Success<T>;

  const factory SearchResultState.error(NetworkExceptions networkExceptions) =
      Error<T>;
} 






// part of 'product_search_cubit.dart';

// @immutable
// abstract class ProductSearchState {}

// class ProductSearchInitial extends ProductSearchState {}

// class GetSearchResult extends ProductSearchState {
//   final SearchResultModel searchResult;
//   GetSearchResult(this.searchResult);
// }
