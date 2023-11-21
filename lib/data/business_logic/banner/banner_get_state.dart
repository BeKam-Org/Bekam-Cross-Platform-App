import 'package:bekam/data/model/network_exception/network_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_get_state.freezed.dart';

/// A union class using Freezed to represent different states of Banner data fetching.
///
/// The states include [Idle], [Loading], [Success], and [Error].
@freezed
class BannerGetState<T> with _$BannerGetState {
  /// Represents the idle state where no data fetching operation is in progress.
  const factory BannerGetState.idle() = Idle<T>;

  /// Represents the loading state indicating an ongoing data fetching operation.
  const factory BannerGetState.loading() = Loading<T>;

  /// Represents the success state with the fetched data of type [T].
  const factory BannerGetState.success(T data) = Success<T>;

  /// Represents the error state with details of the occurred exception.
  const factory BannerGetState.error(NetworkExceptions networkExceptions) =
      Error<T>;
}
