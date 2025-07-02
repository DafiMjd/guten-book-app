import 'package:dependencies/dependencies.dart';
import 'package:get_it/get_it.dart';

import '../../data.dart';

final getIt = GetIt.instance;

class AppGetIt {
  static void setup({VoidCallback? additionalDependenciesCallback}) {
    additionalDependenciesCallback?.call();
    _initRepositories();
    _initServices();
  }

  static void _initServices() {
    getIt
      ..registerLazySingleton<DioCacheService>(DioCacheService.new)
      ..registerLazySingleton<Alice>(Alice.new)
      ..registerLazySingleton<ApiServices>(ApiServices.new)
      ..registerLazySingleton<SharedPreferenceService>(
        SharedPreferenceService.new,
      );
  }

  static void _initRepositories() {
    getIt.registerLazySingleton<BookRepository>(BookRepositoryImpl.new);
  }
}
