import '../constant/dio_cache_constant.dart';
import '../model/cache_whitelist_mdl.dart';

class DioCacheHelper {
  const DioCacheHelper._();

  static CacheWhitelistMdl? getCacheWhitelistInfo({required String url}) {
    try {
      return DioCacheConstant.cacheWhitelists.firstWhere(
        (cacheWhitelist) =>
            _isWhitelisted(url: url, cacheWhitelist: cacheWhitelist),
      );
    } catch (_) {
      return null;
    }
  }

  static bool _isWhitelisted({
    required String url,
    required CacheWhitelistMdl cacheWhitelist,
  }) {
    return url.contains(cacheWhitelist.url);
  }
}
