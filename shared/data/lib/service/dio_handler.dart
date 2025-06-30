import 'package:dependencies/dependencies.dart';
import 'package:dio/dio.dart';

import '../get_it/index.dart';

class DioHandler {
  const DioHandler._();

  static Dio getDio({required String apiBaseUrl}) {
    final options = BaseOptions(
      baseUrl: apiBaseUrl,
      connectTimeout: const Duration(seconds: 50),
      receiveTimeout: const Duration(seconds: 30),
    );

    final dio = Dio(options);
    dio.interceptors.add(getIt<Alice>().getDioInterceptor());

    return dio;
  }
}
