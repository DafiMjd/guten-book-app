import '../model/cache_whitelist_mdl.dart';

class DioCacheConstant {
  const DioCacheConstant._();

  static List<CacheWhitelistMdl> get cacheWhitelists => const [
    CacheWhitelistMdl(url: '/books', expiredDuration: Duration(minutes: 1)),
  ];
}
