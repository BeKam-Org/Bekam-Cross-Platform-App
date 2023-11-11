import 'package:bekam/data/cubit/banner_state.dart';
import 'package:bekam/data/model/banner_model.dart';
import 'package:bekam/data/repository/banner_repo.dart';
import 'package:bekam/data/repository/network_exception.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BannerCubit extends Cubit<BannerState<List<BannerModel>>> {
  final BannerRepository bannerRepository;
  BannerCubit(this.bannerRepository) : super(const Idle());

  void getBaannerList() async {
    var data = await bannerRepository.getCategoryList();

    data.when(success: (List<BannerModel> categoryModel) {
      emit(BannerState.success(categoryModel));
    }, failure: (NetworkExceptions networkExceptions) {
      emit(BannerState.error(networkExceptions));
    });
  }
}
