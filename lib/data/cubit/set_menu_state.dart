import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bekam/data/repository/network_exception.dart';

part 'set_menu_state.freezed.dart';


@freezed
class SetMenuState<T> with _$SetMenuState {
  const factory SetMenuState.idle() = Idle<T>;

  const factory SetMenuState.loading() = Loading<T>;

  const factory SetMenuState.success(T data) = Success<T>;

  const factory SetMenuState.error(NetworkExceptions networkExceptions) =
      Error<T>;
}
