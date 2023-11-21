import 'package:bekam/data/model/api_result/api_result.dart';
import 'package:bekam/data/model/category_model/category_model.dart';
import 'package:bekam/data/model/network_exception/network_exception.dart';
import 'package:bekam/data/web_services/get.dart';
import 'package:dio/dio.dart';

/// Repository class responsible for handling Category-related data operations.
///
/// This class utilizes the [GetMethod] and [Dio] instances for making HTTP GET requests.
class CategoryRepository {
  /// An instance of [GetMethod] for performing HTTP GET requests.
  final GetMethod getMethod;

  /// An instance of [Dio] for configuring and executing HTTP requests.
  final Dio dio;

  /// Constructor for [CategoryRepository] that takes instances of [GetMethod] and [Dio].
  CategoryRepository(this.getMethod, this.dio);

  /// Fetches a list of Categories from the server.
  ///
  /// Returns a [Future] containing an [ApiResult] with a list of [CategoryModel] on success,
  /// or an [ApiResult] with a [NetworkExceptions] on failure.
  Future<ApiResult<List<CategoryModel>>> getCategoryList() async {
    try {
      // Perform an HTTP GET request using the provided [getMethod] instance and [dio] instance.
      var response = await getMethod.doHttpMethod(
        dio: dio,
        uri: '/api/v1/categories',
      );
      // Map the response data to a list of CategoryModel objects.
      List<CategoryModel> data = [];
      response.data.forEach(
        (response) => data.add(
          CategoryModel.fromJson(response),
        ),
      );
      // Return a successful result containing the list of CategoryModel.
      return ApiResult.success(data);
    } catch (error) {
      // Return a failure result with a NetworkExceptions instance for error handling.
      // Return a failure result with a NetworkExceptions instance for error handling.
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
