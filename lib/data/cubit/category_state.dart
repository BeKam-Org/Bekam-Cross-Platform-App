import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bekam/data/repository/network_exception.dart';

part 'category_state.freezed.dart';


@freezed
class CategoryState<T> with _$CategoryState {
  const factory CategoryState.idle() = Idle<T>;

  const factory CategoryState.loading() = Loading<T>;

  const factory CategoryState.success(T data) = Success<T>;

  const factory CategoryState.error(NetworkExceptions networkExceptions) =
      Error<T>;
}
