import 'package:bekam/data/cubit/category_cubit.dart';
import 'package:bekam/data/repository/categories_rpo.dart';
import 'package:bekam/data/webServices/category_webservices.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void getItSetup() {
//   getIt.registerLazySingleton<ProductSearchCubit>(()=> ProductSearchCubit(getIt()));
//   getIt.registerLazySingleton<SearchRepository>(()=>SearchRepository (getIt()));
//   getIt.registerLazySingleton<SearchWbService>(()=> SearchWbService(createAndSetupDio()));

  getIt.registerLazySingleton<CategoryCubit>(() => CategoryCubit(getIt()));
  getIt.registerLazySingleton<CategoryRepository>(
      () => CategoryRepository(getIt()));
  getIt.registerLazySingleton<CategoryWebServices>(
      () => CategoryWebServices(createAndSetupDio()));
}

Dio createAndSetupDio() {
  Dio dio = Dio();

  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    error: true,
    requestHeader: false,
    responseHeader: false,
    request: true,
    requestBody: true,
  ));

  return dio;
}
