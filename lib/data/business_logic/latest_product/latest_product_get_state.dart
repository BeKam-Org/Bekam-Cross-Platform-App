// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:bekam/data/model/network_exception/network_exception.dart';

part 'latest_product_get_state.freezed.dart';

/// A union class using Freezed to represent different states of latest product data fetching.
///
/// The states include [Idle], [Loading], [Success], and [Error].
@freezed
class LatestProductGetState<T> with _$LatestProductGetState {
  /// Represents the idle state where no data fetching operation is in progress.
  const factory LatestProductGetState.idle() = Idle<T>;

  /// Represents the loading state indicating an ongoing data fetching operation.
  const factory LatestProductGetState.loading() = Loading<T>;

  /// Represents the success state with the fetched data of type [T].
  const factory LatestProductGetState.success(T data) = Success<T>;

  /// Represents the error state with details of the occurred exception.
  const factory LatestProductGetState.error(NetworkExceptions networkExceptions) =
      Error<T>;
}
