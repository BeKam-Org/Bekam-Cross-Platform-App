// import 'package:bekam/data/model/search_result_model.dart';
// import 'package:bekam/data/webServices/search_webservices.dart';

import 'package:bekam/data/model/search_result_model.dart';
import 'package:bekam/data/repository/api_result.dart';
import 'package:bekam/data/repository/network_exception.dart';
import 'package:bekam/data/webServices/search_webservices.dart';

class SearchRepository {
  final SearchWbService searchWbService;
  SearchRepository(this.searchWbService);

  Future<ApiResult<SearchResultModel>> getSearchResults(
      {required String searchKey, required String region}) async {
    try {
      var response = await searchWbService.getSearchResults(
        searchKey: searchKey,
        region: region,
      );

      //! retry Mechanism
      if (response.retry == true) {
        return retrySearchMechanismPost(oldRetyrBody: response.toJson());
      }

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }

  Future<ApiResult<SearchResultModel>> retrySearchMechanismPost(
      {required Map<String, dynamic> oldRetyrBody}) async {
    try {
      var response = await searchWbService.retrySearchMechanismPost(
          oldRetyrBody: oldRetyrBody);
      //! neste retry mechanism
      if (response.retry == true) {
        return retrySearchMechanismPost(oldRetyrBody: response.toJson());
      }    
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
