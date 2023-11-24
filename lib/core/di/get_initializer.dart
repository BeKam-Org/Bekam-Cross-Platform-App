// 📦 Package imports:
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:bekam/core/networking/dio.dart';
import 'package:bekam/data/business_logic/banner/banner_get_cubit.dart';
import 'package:bekam/data/business_logic/category/category_get_cubit.dart';
import 'package:bekam/data/business_logic/latest_product/latest_product_get_cubit.dart';
import 'package:bekam/data/business_logic/popular_product/popular_product_get.dart';
import 'package:bekam/data/business_logic/set_menu/set_menu_get_cubit.dart';
import 'package:bekam/data/repository/banner_repo.dart';
import 'package:bekam/data/repository/categories.dart';
import 'package:bekam/data/repository/latest_product_repo.dart';
import 'package:bekam/data/repository/popular_product_repo.dart';
import 'package:bekam/data/repository/set_model_repo.dart';
import 'package:bekam/data/web_services/delete.dart';
import 'package:bekam/data/web_services/dio_factory.dart';
import 'package:bekam/data/web_services/get.dart';
import 'package:bekam/data/web_services/put.dart';

final getIt = GetIt.instance;

/// A function to set up dependency injection using GetIt.
void setupGetIt() {
  // Registering dio method
  getIt.registerLazySingleton<Dio>(() => createAndSetupDio());

  // Registering HTTP methods
  getIt.registerLazySingleton<DioFactory>(() => DioFactory());
  getIt.registerLazySingleton<GetMethod>(() => GetMethod());
  getIt.registerLazySingleton<DeleteMethod>(() => DeleteMethod());
  getIt.registerLazySingleton<PutMethod>(() => PutMethod());

  // Registering [Banner] repositories and cubits
  getIt.registerLazySingleton<BannerRepository>(
      () => BannerRepository(getIt(), getIt()));
  getIt.registerLazySingleton<BannerGetCubit>(() => BannerGetCubit(getIt()));

  // Registering [Category] repositories and cubits
  getIt.registerLazySingleton<CategoryRepository>(
      () => CategoryRepository(getIt(), getIt()));
  getIt
      .registerLazySingleton<CategoryGetCubit>(() => CategoryGetCubit(getIt()));

  // Registering [LatestProduct] repositories and cubits
  getIt.registerLazySingleton<LatestProductRepository>(
      () => LatestProductRepository(getIt(), getIt()));
  getIt.registerLazySingleton<LatestProductGetCubit>(
      () => LatestProductGetCubit(getIt()));

  // Registering [PopularProduct] repositories and cubits
  getIt.registerLazySingleton<PopularProductRepository>(
      () => PopularProductRepository(getIt(), getIt()));
  getIt.registerLazySingleton<PopularProductGetCubit>(
      () => PopularProductGetCubit(getIt()));

  // Registering [SetMenu] repositories and cubits
  getIt.registerLazySingleton<SetMenuRepository>(
      () => SetMenuRepository(getIt(), getIt()));
  getIt.registerLazySingleton<SetMenuGetCubit>(() => SetMenuGetCubit(getIt()));
}
