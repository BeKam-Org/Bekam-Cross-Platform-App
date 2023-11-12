import 'package:bekam/data/cubit/set_menu_state.dart';
import 'package:bekam/data/model/product_model.dart';
import 'package:bekam/data/repository/network_exception.dart';
import 'package:bekam/data/repository/set_menu_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SetMenuCubit extends Cubit<SetMenuState<List<Product>>> {
  final SetMenuRepository setMenuRepository;
  SetMenuCubit(this.setMenuRepository) : super(const Idle());

  void getSetMenuList() async {
    var data = await setMenuRepository.getSetMenuList();

    data.when(success: (List<Product> product) {
      emit(SetMenuState.success(product));
    }, failure: (NetworkExceptions networkExceptions) {
      emit(SetMenuState.error(networkExceptions));
    });
  }
}
