import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';

import '../data.dart';
import '../helper/index.dart';

class RetrieveCacheInterceptor extends Interceptor {
  RetrieveCacheInterceptor();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final dioCacheService = getIt<DioCacheService>();

    final uri = options.uri.toString();
    final cacheWhitelistInfo = DioCacheHelper.getCacheWhitelistInfo(url: uri);
    final isWhitelisted = cacheWhitelistInfo != null;

    if (isWhitelisted) {
      final expiredDuration = cacheWhitelistInfo.expiredDuration;

      dioCacheService.keyBuilder(headers: options.headers, url: options.uri);

      final cacheOptions = dioCacheService.getCacheOptions();
      final key = CacheOptions.defaultCacheKeyBuilder(
        url: options.uri,
        headers: options.getFlattenHeaders(),
      );

      final cache = await cacheOptions?.store?.get(key);

      if (cache != null &&
          DateTime.now().difference(cache.responseDate) < expiredDuration) {
        return handler.resolve(cache.toResponse(options));
      }
    }

    return handler.next(options);
  }
}
