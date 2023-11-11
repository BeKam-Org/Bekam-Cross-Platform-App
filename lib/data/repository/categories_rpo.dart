import 'package:bekam/data/model/category_model.dart';
import 'package:bekam/data/repository/api_result.dart';
import 'package:bekam/data/repository/network_exception.dart';
import 'package:bekam/data/webServices/category_webservices.dart';

class CategoryRepository {
  final CategoryWebServices categoryWebServices;
  CategoryRepository(this.categoryWebServices);

  Future<ApiResult<List<CategoryModel>>> getCategoryList() async {
    try {
      var response = await categoryWebServices.getCategoryList();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
