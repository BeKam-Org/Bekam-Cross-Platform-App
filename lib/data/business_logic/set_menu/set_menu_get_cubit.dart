import 'package:bekam/data/business_logic/set_menu/set_menu_get_state.dart';
import 'package:bekam/data/model/network_exception/network_exception.dart';
import 'package:bekam/data/model/product_model/product_model.dart';
import 'package:bekam/data/repository/set_model_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A [Cubit] responsible for managing the state of Set Menu data fetching.
///
/// This Cubit communicates with the UI to provide different states like [Idle], [Loading],
/// [Success], and [Error] based on the asynchronous data fetching operation.
class SetMenuGetCubit extends Cubit<SetMenuGetState<List<Product>>> {
  /// The repository responsible for handling Set Menu-related data operations.
  final SetMenuRepository setMenuRepository;

  /// Constructor for [SetMenuGetCubit] that takes an instance of [SetMenuRepository].
  SetMenuGetCubit(this.setMenuRepository) : super(const Idle());

  /// Fetches the Set Menu list and updates the state accordingly.
  ///
  /// On successful fetching, emits [SetMenuGetState.success] with the list of [Product].
  /// On failure, emits [SetMenuGetState.error] with [NetworkExceptions] details.
  void getSetMenuList() async {
    // Fetch Set Menu list from the repository.
    var data = await setMenuRepository.getSetMenuList();
    // Process the result and emit the corresponding state.
    data.when(success: (List<Product> product) {
      emit(SetMenuGetState.success(product));
    }, failure: (NetworkExceptions networkExceptions) {
      emit(SetMenuGetState.error(networkExceptions));
    });
  }
}
