import 'package:data/data.dart';

import '../domain.dart';

class BookUsecase {
  final BookRepository repo;

  BookUsecase() : repo = getIt<BookRepository>();

  Future<Either<ResponseListBookEntity>> getBooks(
    ParamListBookEntity params,
  ) async {
    try {
      final res = await repo.getBooks(params.toJson());

      return Either.success(value: ResponseListBookEntity.fromJson(res));
    } catch (e) {
      return Either.failure(exception: ErrorHelper.handleError(error: e));
    }
  }

  List<BookEntityGrid> mapToBookEntityGrid(List<BookEntity> books) {
    final gridList = <BookEntityGrid>[];
    for (var i = 0; i < books.length; i += 2) {
      if (i + 1 < books.length) {
        gridList.add(BookEntityGrid(left: books[i], right: books[i + 1]));
      } else {
        gridList.add(BookEntityGrid(left: books[i]));
      }
    }
    return gridList;
  }
}
