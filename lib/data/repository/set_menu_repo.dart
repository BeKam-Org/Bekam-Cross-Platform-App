import 'package:bekam/data/model/product_model.dart';
import 'package:bekam/data/repository/api_result.dart';
import 'package:bekam/data/repository/network_exception.dart';
import 'package:bekam/data/webServices/set_menu_webservices.dart';

class SetMenuRepository {
  final SetMenuWebServices setMenuWebServices;
  SetMenuRepository(this.setMenuWebServices);

  Future<ApiResult<List<Product>>> getSetMenuList() async {
    try {
      var response = await setMenuWebServices.getSetMenuList();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
