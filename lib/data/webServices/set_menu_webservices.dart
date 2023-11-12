import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/model/product_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'set_menu_webservices.g.dart';

@RestApi(baseUrl: GlobalAppStrings.baseUrl)
abstract class SetMenuWebServices {
  factory SetMenuWebServices(Dio dio, {String baseUrl}) = _SetMenuWebServices;
  static const headers = {
    'Content-Type': 'application/json; charset=UTF-8',
    'branch-id': '1',
    'X-localization': 'en',
    'Authorization': 'Bearer',
  };

  @GET('/api/v1/products/set-menu')
  @Headers(headers)
  Future<List<Product>> getSetMenuList();
}
