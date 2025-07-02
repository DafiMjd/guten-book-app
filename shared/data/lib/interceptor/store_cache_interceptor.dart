import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';

import '../get_it/index.dart';
import '../helper/dio_cache_helper.dart';
import '../service/dio_cache_service.dart';

class StoreCacheInterceptor extends Interceptor {
  StoreCacheInterceptor();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final cacheOptions = getIt<DioCacheService>().getCacheOptions();

    final uri = options.uri.toString();
    final cacheWhitelistInfo = DioCacheHelper.getCacheWhitelistInfo(url: uri);
    final isWhitelisted = cacheWhitelistInfo != null;

    if (isWhitelisted && cacheOptions != null) {
      options.extra.addAll(
        cacheOptions.copyWith(policy: CachePolicy.forceCache).toExtra(),
      );

      return handler.next(options);
    }

    return handler.next(options);
  }
}
