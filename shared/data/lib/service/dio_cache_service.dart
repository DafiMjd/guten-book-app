import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:http_cache_hive_store/http_cache_hive_store.dart';
import 'package:path_provider/path_provider.dart';

class DioCacheService {
  DioCacheService() {
    _initialize();
  }

  CacheOptions? _cacheOptions;

  Duration get cacheExpiredDuration => const Duration(days: 7);

  Future<void> _initialize() async {
    WidgetsFlutterBinding.ensureInitialized();

    final cacheDir = await getApplicationSupportDirectory();
    final cacheStore = HiveCacheStore(cacheDir.path);

    _cacheOptions = CacheOptions(
      store: cacheStore,
      policy: CachePolicy.noCache,
      priority: CachePriority.high,
      maxStale: cacheExpiredDuration,
      hitCacheOnErrorCodes: [401, 404],
      hitCacheOnNetworkFailure: true,
    );
  }

  CacheOptions? getCacheOptions() {
    return _cacheOptions;
  }

  DioCacheInterceptor? getInterceptor() {
    if (_cacheOptions != null) {
      return DioCacheInterceptor(options: _cacheOptions!);
    }

    return null;
  }

  String keyBuilder({Map<String, dynamic>? headers, required Uri url}) {
    final requestUri = url.toString();
    final requestHeaders = headers.toString();

    return _generateMD5Hash('$requestUri $requestHeaders');
  }

  Future<bool> deleteCache(String key) async {
    if (_cacheOptions == null) {
      // Failed to delete the cache
      return false;
    }

    await _cacheOptions?.store?.delete(key);

    return true;
  }

  Future<void> removeAllCache() async {
    await _cacheOptions?.store?.clean();
  }

  String _generateMD5Hash(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }
}
