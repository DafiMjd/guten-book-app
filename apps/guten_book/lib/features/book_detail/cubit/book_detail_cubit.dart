import 'package:data/data.dart';
import 'package:dependencies/dependencies.dart';
import 'package:domain/domain.dart';
import '../../../local_dependencies.dart';

import 'book_detail_state.dart';

class BookDetailCubit extends Cubit<BookDetailState> {
  BookDetailCubit()
    : usecase = getIt<BookDetailUsecase>(),
      super(BookDetailState.initial());

  final BookDetailUsecase usecase;

  void onBuild({required List<BookEntity> books}) {
    emit(state.copyWith(books: books));
    getBookIds();
  }

  Future<void> getBookIds() async {
    emit(state.copyWith(getBookIdsState: const ViewData.loading()));
    final response = await usecase.loadBookIds();

    switch (response) {
      case Success(value: final res):
        final bookMap = usecase.formBookMap(state.books, res);
        emit(
          state.copyWith(
            bookIds: res,
            bookMap: bookMap,
            getBookIdsState: const ViewData.loaded(data: null),
          ),
        );
      case Failure(exception: final exception):
        emit(
          state.copyWith(getBookIdsState: ViewData.error(exception: exception)),
        );
    }
  }

  Future<void> saveBookId(int id) async {
    final currentBookIds = List<int>.from(state.bookIds);
    if (currentBookIds.contains(id)) {
      return;
    }
    final bookMap = Map<int, bool>.from(state.bookMap);
    bookMap[id] = true;
    emit(state.copyWith(bookIds: [...currentBookIds, id], bookMap: bookMap));

    EasyDebounce.debounce(
      'saveBookId',
      const Duration(milliseconds: 500),
      () async {
        await _saveBookId(id);
      },
    );
  }

  Future<void> removeBookId(int id) async {
    final currentBookIds = List<int>.from(state.bookIds);
    if (!currentBookIds.contains(id)) {
      return;
    }
    final bookMap = Map<int, bool>.from(state.bookMap);
    bookMap[id] = false;
    emit(
      state.copyWith(
        bookIds: currentBookIds.where((e) => e != id).toList(),
        bookMap: bookMap,
      ),
    );

    EasyDebounce.debounce(
      'deleteBookId',
      const Duration(milliseconds: 500),
      () async {
        await _removeBookId(id);
      },
    );
  }

  Future<void> _saveBookId(int id) async {
    emit(state.copyWith(updateBookIdState: const ViewData.loading()));

    final response = await usecase.saveBookId(id);

    switch (response) {
      case Success(value: final res):
        emit(state.copyWith(bookIds: res));
      case Failure(exception: final exception):
        emit(
          state.copyWith(getBookIdsState: ViewData.error(exception: exception)),
        );
    }
  }

  Future<void> _removeBookId(int id) async {
    emit(state.copyWith(updateBookIdState: const ViewData.loading()));

    final response = await usecase.removeBookId(id);

    switch (response) {
      case Success(value: final res):
        emit(state.copyWith(bookIds: res));
      case Failure(exception: final exception):
        emit(
          state.copyWith(getBookIdsState: ViewData.error(exception: exception)),
        );
    }
  }
}
