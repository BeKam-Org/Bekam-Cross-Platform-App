import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/model/product_model.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'product_webservices.g.dart';

@RestApi(baseUrl: GlobalAppStrings.baseUrl)
abstract class ProductWebServices {
  factory ProductWebServices(Dio dio, {String baseUrl}) = _ProductWebServices;
  static const headers = {
    'Content-Type': 'application/json; charset=UTF-8',
    'branch-id': '1',
    'X-localization': 'en',
    'Authorization': 'Bearer',
  };

  @GET('/api/v1/products/latest?limit={limit}&&offset={offset}')
  @Headers(headers)
  Future<ProductModel> getLatestProductList({
    @Path() required int limit,
    @Path() required String offset,
  });

  @GET(
      '/api/v1/products/popular?limit={limit}&&offset={offset}&product_type={type}')
  @Headers(headers)
  Future<ProductModel> getPopularProductList({
    @Path() required int limit,
    @Path() required String offset,
    @Path() required String type,
  });
}
