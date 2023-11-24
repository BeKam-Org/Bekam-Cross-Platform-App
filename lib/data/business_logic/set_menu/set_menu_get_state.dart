// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:bekam/data/model/network_exception/network_exception.dart';

part 'set_menu_get_state.freezed.dart';

/// A union class using Freezed to represent different states of Set Menu data fetching.
///
/// The states include [Idle], [Loading], [Success], and [Error].
@freezed
class SetMenuGetState<T> with _$SetMenuGetState {
  /// Represents the idle state where no data fetching operation is in progress.
  const factory SetMenuGetState.idle() = Idle<T>;

  /// Represents the loading state indicating an ongoing data fetching operation.
  const factory SetMenuGetState.loading() = Loading<T>;

  /// Represents the success state with the fetched data of type [T].
  const factory SetMenuGetState.success(T data) = Success<T>;

  /// Represents the error state with details of the occurred exception.
  const factory SetMenuGetState.error(NetworkExceptions networkExceptions) =
      Error<T>;
}
