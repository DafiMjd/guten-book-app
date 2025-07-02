import 'package:data/data.dart';

import '../domain.dart';

class BookDetailUsecase {
  final SharedPreferenceService prefs;

  BookDetailUsecase() : prefs = getIt<SharedPreferenceService>();

  Map<int, bool> formBookMap(
    List<BookEntity> books,
    List<int> savedBookIds,
  ) {
    final bookMap = <int, bool>{};
    for (final book in books) {
      bookMap[book.id] = savedBookIds.contains(book.id);
    }
    return bookMap;
  }

  Future<Either<List<int>>> removeBookId(int id) async {
    try {
      final ids = await prefs.removeBookId(id);
      return Either.success(value: ids);
    } catch (e) {
      return Either.failure(exception: ErrorHelper.handleError(error: e));
    }
  }

  Future<Either<List<int>>> saveBookId(int id) async {
    try {
      final ids = await prefs.saveBookId(id);
      return Either.success(value: ids);
    } catch (e) {
      return Either.failure(exception: ErrorHelper.handleError(error: e));
    }
  }

  Future<Either<List<int>>> loadBookIds() async {
    try {
      final ids = await prefs.loadBookIds();
      return Either.success(value: ids);
    } catch (e) {
      return Either.failure(exception: ErrorHelper.handleError(error: e));
    }
  }
}
