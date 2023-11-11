import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/model/category_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'category_webservices.g.dart';

@RestApi(baseUrl: GlobalAppStrings.baseUrl)
abstract class CategoryWebServices {
  factory CategoryWebServices(Dio dio, {String baseUrl}) = _CategoryWebServices;

  @GET('/api/v1/categories')
  Future<List<CategoryModel>> getCategoryList();
  
}

