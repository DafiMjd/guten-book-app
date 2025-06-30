import 'dart:ui';

import 'package:data/data.dart';
import 'package:get_it/get_it.dart';

import '../domain.dart';

final getIt = GetIt.instance;

class AppGetIt {
  static void setup({VoidCallback? additionalDependenciesCallback}) {
    _initRepositories();
    _initUsecases();
    additionalDependenciesCallback?.call();
  }

  static void _initRepositories() {
    getIt.registerLazySingleton<BookRepository>(BookRepositoryImpl.new);
  }

  static void _initUsecases() {
    getIt
      .registerLazySingleton<BookUsecase>(BookUsecase.new);
  }
}
