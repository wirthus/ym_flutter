import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ym_api_client/ym_api_client.dart';

import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

// @module
// abstract class RegisterModule {
//   @singleton
//   Dio get dio => Dio();

//   @singleton
//   YmApiClient get ymApiClient => YmApiClient(dio: getIt.get<Dio>());
// }

void setupDependencies() {
  // Регистрация Dio как синглтона
  getIt.registerLazySingleton<Dio>(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.example.com',
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );

    // При необходимости можно добавить интерцепторы
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      responseBody: true,
    ));

    return dio;
  });

  getIt.registerLazySingleton<YmApiClient>(() => YmApiClient(dio: getIt.get<Dio>()));
}
