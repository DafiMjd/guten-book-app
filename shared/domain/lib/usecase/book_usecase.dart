import 'package:data/data.dart';

import '../domain.dart';

class BookUsecase {
  final BookRepository repo;

  BookUsecase({required this.repo});

  Future<Either<ResponseBookEntity>> getBooks() async {
    try {
      final res = await repo.getBooks();

      return Either.success(value: ResponseBookEntity.fromJson(res));
    } catch (e) {
      return Either.failure(exception: ErrorHelper.handleError(error: e));
    }
  }
}
