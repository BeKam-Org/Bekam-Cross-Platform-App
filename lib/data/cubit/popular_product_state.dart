
import 'package:bekam/data/repository/network_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_product_state.freezed.dart';

@freezed
class PopularProductState <T> with _$PopularProductState{
  const factory PopularProductState.idle() = Idle<T>;

  const factory PopularProductState.loading() = Loading<T>;

  const factory PopularProductState.success(T data) = Success<T>;

  const factory PopularProductState.error(NetworkExceptions networkExceptions) =
      Error<T>;
} 



