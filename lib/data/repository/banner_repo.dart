import 'package:bekam/data/model/banner_model.dart';
import 'package:bekam/data/repository/api_result.dart';
import 'package:bekam/data/repository/network_exception.dart';
import 'package:bekam/data/webServices/banner_webservices.dart';

class BannerRepository {
  final BannerWebServices bannerWebServices;
  BannerRepository(this.bannerWebServices);

  Future<ApiResult<List<BannerModel>>> getCategoryList() async {
    try {
      var response = await bannerWebServices.getBannerList();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
