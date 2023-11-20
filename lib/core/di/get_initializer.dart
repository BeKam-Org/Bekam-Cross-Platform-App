import 'package:bekam/core/networking/dio.dart';
import 'package:bekam/data/business_logic/set_menu/set_menu_get_cubit.dart';
import 'package:bekam/data/repository/set_model_repo.dart';
import 'package:bekam/data/web_services/delete.dart';
import 'package:bekam/data/web_services/dio_factory.dart';
import 'package:bekam/data/web_services/get.dart';
import 'package:bekam/data/web_services/put.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

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

  // Registering [SetMenu] repositories and cubits
  getIt.registerLazySingleton<SetMenuRepository>(
      () => SetMenuRepository(getIt(), getIt()));
  getIt.registerLazySingleton<SetMenuGetCubit>(() => SetMenuGetCubit(getIt()));
}
