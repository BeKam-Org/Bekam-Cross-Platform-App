// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import 'package:bekam/data/model/api_result/api_result.dart';
import 'package:bekam/data/model/network_exception/network_exception.dart';
import 'package:bekam/data/model/product_model/product_model.dart';
import 'package:bekam/data/web_services/get.dart';

/// Repository class responsible for handling Set Menu-related data operations.
///
/// This class utilizes the [GetMethod] and [Dio] instances for making HTTP GET requests.
class SetMenuRepository {
  /// An instance of [GetMethod] for performing HTTP GET requests.
  final GetMethod getMethod;

  /// An instance of [Dio] for configuring and executing HTTP requests.
  final Dio dio;

  /// Constructor for [SetMenuRepository] that takes instances of [GetMethod] and [Dio].
  SetMenuRepository(this.getMethod, this.dio);

  /// Fetches a list of Set Menu products from the server.
  ///
  /// Returns a [Future] containing an [ApiResult] with a list of [Product] on success,
  /// or an [ApiResult] with a [NetworkExceptions] on failure.
  Future<ApiResult<List<Product>>> getSetMenuList() async {
    try {
      // Perform an HTTP GET request using the provided [getMethod] instance and [dio] instance.
      var response = await getMethod.doHttpMethod(
        dio: dio,
        uri: '/api/v1/products/set-menu',
      );

      // Map the response data to a list of Product objects.
      List<Product> data = [];
      response.data.forEach(
        (response) => data.add(
          Product.fromJson(response),
        ),
      );

      // Return a successful result containing the list of products.
      return ApiResult.success(data);
    } catch (error) {
      // Return a failure result with a NetworkExceptions instance for error handling.
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
