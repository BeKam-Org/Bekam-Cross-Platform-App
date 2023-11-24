// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:bekam/data/business_logic/banner/banner_get_state.dart';
import 'package:bekam/data/model/banner_model/banner_model.dart';
import 'package:bekam/data/model/network_exception/network_exception.dart';
import 'package:bekam/data/repository/banner_repo.dart';

/// A [Cubit] responsible for managing the state of Banner data fetching.
///
/// This Cubit communicates with the UI to provide different states like [Idle], [Loading],
/// [Success], and [Error] based on the asynchronous data fetching operation.
class BannerGetCubit extends Cubit<BannerGetState<List<BannerModel>>> {
  /// The repository responsible for handling Banner-related data operations.
  final BannerRepository bannerRepository;

  /// Constructor for [BannerGetCubit] that takes an instance of [BannerRepository].
  BannerGetCubit(this.bannerRepository) : super(const Idle());

  /// Fetches the banner list and updates the state accordingly.
  ///
  /// On successful fetching, emits [BannerGetState.success] with the list of [BannerModel].
  /// On failure, emits [BannerGetState.error] with [NetworkExceptions] details.
  void getBaannerList() async {
    // Fetch Set Menu list from the repository.
    var data = await bannerRepository.getBannerList();

    // Process the result and emit the corresponding state.
    data.when(success: (List<BannerModel> categoryModel) {
      emit(BannerGetState.success(categoryModel));
    }, failure: (NetworkExceptions networkExceptions) {
      emit(BannerGetState.error(networkExceptions));
    });
  }
}
