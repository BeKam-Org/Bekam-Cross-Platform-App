import 'package:bekam/data/cubit/banner_cubit.dart';
import 'package:bekam/data/cubit/category_cubit.dart';
import 'package:bekam/data/cubit/latest_product_cubit.dart';
import 'package:bekam/data/cubit/popular_product_cubit.dart';
import 'package:bekam/data/cubit/set_menu_cubit.dart';
import 'package:bekam/data/repository/banner_repo.dart';
import 'package:bekam/data/repository/categories_rpo.dart';
import 'package:bekam/data/repository/product_repo.dart';
import 'package:bekam/data/repository/set_menu_repo.dart';
import 'package:bekam/data/webServices/banner_webservices.dart';
import 'package:bekam/data/webServices/category_webservices.dart';
import 'package:bekam/data/webServices/product_webservices.dart';
import 'package:bekam/data/webServices/set_menu_webservices.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final getIt = GetIt.instance;

void getItSetup() {
//   getIt.registerLazySingleton<ProductSearchCubit>(()=> ProductSearchCubit(getIt()));
//   getIt.registerLazySingleton<SearchRepository>(()=>SearchRepository (getIt()));
//   getIt.registerLazySingleton<SearchWbService>(()=> SearchWbService(createAndSetupDio()));
  getIt.registerLazySingleton<Dio>(() => createAndSetupDio());

  //! category
  getIt.registerLazySingleton<CategoryCubit>(() => CategoryCubit(getIt()));
  getIt.registerLazySingleton<CategoryRepository>(
    () => CategoryRepository(
      getIt(),
    ),
  );
  getIt.registerLazySingleton<CategoryWebServices>(
    () => CategoryWebServices(
      getIt(),
    ),
  );

  //! Banner
  getIt.registerLazySingleton<BannerCubit>(() => BannerCubit(getIt()));
  getIt.registerLazySingleton<BannerRepository>(
    () => BannerRepository(
      getIt(),
    ),
  );
  getIt.registerLazySingleton<BannerWebServices>(
    () => BannerWebServices(
      getIt(),
    ),
  );

  //!Popular+Latest products
  getIt.registerLazySingleton<PopularProductCubit>(
      () => PopularProductCubit(getIt()));
  getIt.registerLazySingleton<LatestProductCubit>(
      () => LatestProductCubit(getIt()));
  getIt.registerLazySingleton<ProductRepository>(
      () => ProductRepository(getIt()));
  getIt.registerLazySingleton<ProductWebServices>(
      () => ProductWebServices(getIt()));

  //!set menu
  getIt.registerLazySingleton<SetMenuCubit>(() => SetMenuCubit(getIt()));
  getIt.registerLazySingleton<SetMenuRepository>(
      () => SetMenuRepository(getIt()));
  getIt.registerLazySingleton<SetMenuWebServices>(
      () => SetMenuWebServices(getIt()));
}

Dio createAndSetupDio() {
  Dio dio = Dio();
  dio.interceptors.add(PrettyDioLogger());

  dio.interceptors.add(PrettyDioLogger(
    responseBody: true,
    error: true,
    requestHeader: false,
    responseHeader: false,
    request: true,
    requestBody: true,
  ));

  return dio;
}
