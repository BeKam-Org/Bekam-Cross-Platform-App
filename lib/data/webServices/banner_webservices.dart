  import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/model/banner_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'banner_webservices.g.dart';

@RestApi(baseUrl: GlobalAppStrings.baseUrl)
abstract class BannerWebServices {
  factory BannerWebServices(Dio dio, {String baseUrl}) = _BannerWebServices;

  @GET('/api/v1/banners')
  Future<List<BannerModel>> getBannerList();
  
}

