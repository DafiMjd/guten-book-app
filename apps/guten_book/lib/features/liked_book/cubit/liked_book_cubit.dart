import 'package:data/data.dart';
import 'package:dependencies/dependencies.dart';
import 'package:domain/domain.dart';

import 'liked_book_state.dart';

class LikedBookCubit extends RefreshableCubit<LikedBookState> {
  LikedBookCubit()
    : bookUsecase = getIt<BookUsecase>(),
      bookDetailUsecase = getIt<BookDetailUsecase>(),
      super(LikedBookState.initial());

  final BookUsecase bookUsecase;
  final BookDetailUsecase bookDetailUsecase;

  @override
  void setup() {
    initRefresh(refreshKey: RefreshKeys.likedBookList, onRefresh: refresh);
  }

  Future<void> onBuild() async {
    await getSavedBookIds();
    if (state.savedBookIdsState.isLoaded) {
      if (state.savedBookIds.isNotEmpty) {
        await getBooks();
      } else {
        emit(state.copyWith(booksLoadState: const ViewData.loaded(data: null)));
      }
    }
  }

  Future<void> refresh() async {
    emit(
      state.copyWith(
        booksLoadState: const ViewData.initial(),
        booksMap: {},
        isAllLoaded: false,
        savedBookIdsState: const ViewData.initial(),
        params: state.params.copyWith(page: 1),
      ),
    );
    await onBuild();
  }

  Future<void> getSavedBookIds() async {
    emit(state.copyWith(savedBookIdsState: const ViewData.loading()));
    final response = await bookDetailUsecase.loadBookIds();

    switch (response) {
      case Success(value: final res):
        final params = state.params.copyWith(ids: res);
        emit(
          state.copyWith(
            savedBookIdsState: ViewData.loaded(data: res),
            params: params,
          ),
        );
      case Failure(exception: final exception):
        emit(
          state.copyWith(
            savedBookIdsState: ViewData.error(exception: exception),
          ),
        );
    }
  }

  Future<void> getBooks() async {
    if (state.isAllLoaded) {
      return;
    }

    emit(state.copyWith(booksLoadState: const ViewData.loading()));
    final response = await bookUsecase.getBooks(state.params);

    switch (response) {
      case Success(value: final res):
        final newMap = Map.fromEntries(
          res.results.map((e) => MapEntry(e, true)),
        );
        final booksMap = {...state.booksMap, ...newMap};

        emit(
          state.copyWith(
            booksMap: booksMap,
            booksLoadState: const ViewData.loaded(data: null),
            isAllLoaded: res.next == null,
            params: state.params.nextPage,
          ),
        );
      case Failure(exception: final exception):
        emit(
          state.copyWith(booksLoadState: ViewData.error(exception: exception)),
        );
    }
  }

  void searchBooks(String query) {
    EasyDebounce.debounce('searchBooks', const Duration(milliseconds: 500), () {
      emit(state.copyWith(params: state.params.copyWith(search: query)));
      refresh();
    });
  }

  Future<void> onSaveTapped(BookEntity book) async {
    final isSaved = state.booksMap[book] ?? false;
    final newMap = Map<BookEntity, bool>.from(state.booksMap);
    newMap[book] = !isSaved;
    emit(state.copyWith(booksMap: newMap));

    EasyDebounce.debounce(
      'saveBookIdFromLikedBook',
      const Duration(milliseconds: 200),
      () async {
        final isRemoved = state.booksMap[book] == false;
        if (isRemoved) {
          await _removeBookId(book);
        }
      },
    );
  }

  Future<void> _removeBookId(BookEntity book) async {
    final newMap = Map<BookEntity, bool>.from(state.booksMap)..remove(book);

    emit(
      state.copyWith(
        updateBookIdState: const ViewData.loading(),
        booksMap: newMap,
      ),
    );

    final response = await bookDetailUsecase.removeBookId(book.id);

    switch (response) {
      case Success(value: _):
        emit(
          state.copyWith(updateBookIdState: const ViewData.loaded(data: null)),
        );
      case Failure(exception: final exception):
        emit(
          state.copyWith(
            updateBookIdState: ViewData.error(exception: exception),
          ),
        );
    }
  }
}
