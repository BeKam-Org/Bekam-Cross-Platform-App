// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:bekam/data/model/network_exception/network_exception.dart';

part 'category_get_state.freezed.dart';

/// A union class using Freezed to represent different states of Category data fetching.
///
/// The states include [Idle], [Loading], [Success], and [Error].
@freezed
class CategoryGetState<T> with _$CategoryGetState {
  /// Represents the idle state where no data fetching operation is in progress.
  const factory CategoryGetState.idle() = Idle<T>;

  /// Represents the loading state indicating an ongoing data fetching operation.
  const factory CategoryGetState.loading() = Loading<T>;

  /// Represents the success state with the fetched data of type [T].
  const factory CategoryGetState.success(T data) = Success<T>;

  /// Represents the error state with details of the occurred exception.
  const factory CategoryGetState.error(NetworkExceptions networkExceptions) =
      Error<T>;
}
