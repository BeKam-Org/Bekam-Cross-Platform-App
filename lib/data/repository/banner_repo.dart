// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import 'package:bekam/data/model/api_result/api_result.dart';
import 'package:bekam/data/model/banner_model/banner_model.dart';
import 'package:bekam/data/model/network_exception/network_exception.dart';
import 'package:bekam/data/web_services/get.dart';

/// Repository class responsible for handling Banner-related data operations.
///
/// This class utilizes the [GetMethod] and [Dio] instances for making HTTP GET requests.
class BannerRepository {
  /// An instance of [GetMethod] for performing HTTP GET requests.
  final GetMethod getMethod;

  /// An instance of [Dio] for configuring and executing HTTP requests.
  final Dio dio;

  /// Constructor for [BannerRepository] that takes instances of [GetMethod] and [Dio].
  BannerRepository(this.getMethod, this.dio);

  /// Fetches a list of Banners from the server.
  ///
  /// Returns a [Future] containing an [ApiResult] with a list of [BannerModel] on success,
  /// or an [ApiResult] with a [NetworkExceptions] on failure.
  Future<ApiResult<List<BannerModel>>> getBannerList() async {
    try {
      // Perform an HTTP GET request using the provided [getMethod] instance and [dio] instance.
      var response = await getMethod.doHttpMethod(
        dio: dio,
        uri: '/api/v1/banners',
      );

      // Map the response data to a list of BannerModel objects.
      List<BannerModel> data = [];
      response.data.forEach(
        (response) => data.add(
          BannerModel.fromJson(response),
        ),
      );

      // Return a successful result containing the list of BannerModel.
      return ApiResult.success(data);
    } catch (error) {
      // Return a failure result with a NetworkExceptions instance for error handling.
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
