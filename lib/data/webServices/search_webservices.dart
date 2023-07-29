import 'package:bekam/data/model/search_result_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'search_webservices.g.dart';

@RestApi(baseUrl: "https://beun4whh40.execute-api.us-east-1.amazonaws.com")
abstract class SearchWbService {
  factory SearchWbService(Dio dio, {String baseUrl}) = _SearchWbService;

  @GET("/prod/")
  Future<SearchResultModel> getSearchResults({
    @Query("region") required String region,
    @Query("search_query") required String searchKey,
  });

  @POST("/prod/")
  Future<SearchResultModel> retrySearchMechanismPost({
    @Body() required Map<String, dynamic> oldRetyrBody,
  });
}
