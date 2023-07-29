import 'package:dio/dio.dart';

// final getIt = GetIt.instance;

// void getItSetup() {
//   getIt.registerLazySingleton<ProductSearchCubit>(()=> ProductSearchCubit(getIt()));
//   getIt.registerLazySingleton<SearchRepository>(()=> SearchRepository(getIt()));
//   getIt.registerLazySingleton<SearchWbService>(()=> SearchWbService(createAndSetupDio()));
// }


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
