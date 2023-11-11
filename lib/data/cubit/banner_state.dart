import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bekam/data/repository/network_exception.dart';

part 'banner_state.freezed.dart';


@freezed
class BannerState<T> with _$BannerState {
  const factory BannerState.idle() = Idle<T>;

  const factory BannerState.loading() = Loading<T>;

  const factory BannerState.success(T data) = Success<T>;

  const factory BannerState.error(NetworkExceptions networkExceptions) =
      Error<T>;
}
