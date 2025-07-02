import 'package:dependencies/dependencies.dart';
import 'package:dio/dio.dart';

import '../get_it/index.dart';
import '../interceptor/api_interceptor.dart';
import '../interceptor/retrieve_cache_interceptor.dart';
import '../interceptor/store_cache_interceptor.dart';
import 'dio_cache_service.dart';

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
    dio.interceptors.add(ApiInterceptor());

    final dioCacheInterceptor = getIt<DioCacheService>().getInterceptor();

    if (dioCacheInterceptor != null) {
      dio.interceptors.add(dioCacheInterceptor);
      dio.interceptors.add(StoreCacheInterceptor());
      dio.interceptors.add(RetrieveCacheInterceptor());
    }

    return dio;
  }
}
