import 'package:data/data.dart';
import '../domain.dart';

class DomainGetIt {
  static void setup() {
    _initUsecases();
  }

  static void _initUsecases() {
    getIt
      ..registerLazySingleton<BookUsecase>(BookUsecase.new)
      ..registerLazySingleton<BookDetailUsecase>(BookDetailUsecase.new);
  }
}
