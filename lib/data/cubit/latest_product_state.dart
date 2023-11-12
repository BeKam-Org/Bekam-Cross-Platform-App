
import 'package:bekam/data/repository/network_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'latest_product_state.freezed.dart';


@freezed
class LatestProductState <T> with _$LatestProductState{
  const factory LatestProductState.idle() = Idle<T>;

  const factory LatestProductState.loading() = Loading<T>;

  const factory LatestProductState.success(T data) = Success<T>;

  const factory LatestProductState.error(NetworkExceptions networkExceptions) =
      Error<T>;
} 



