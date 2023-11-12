import 'package:bekam/data/model/product_model.dart';
import 'package:bekam/data/repository/api_result.dart';
import 'package:bekam/data/repository/network_exception.dart';
import 'package:bekam/data/webServices/product_webservices.dart';

class ProductRepository {
  final ProductWebServices productWebServices;
  ProductRepository(this.productWebServices);

  Future<ApiResult<ProductModel>> getLatestProductList({
    required int limit,
    required String offset,
  }) async {
    try {
      var response = await productWebServices.getLatestProductList(
          limit: limit, offset: offset);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }

  Future<ApiResult<ProductModel>> getPopularProductList({
    required int limit,
    required String offset,
    required String type,
  }) async {
    try {
      var response = await productWebServices.getPopularProductList(
          limit: limit, offset: offset, type: type);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
