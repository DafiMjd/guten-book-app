import 'package:data/data.dart';
import 'package:dependencies/dependencies.dart';
import 'package:domain/domain.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : usecase = getIt<BookUsecase>(), super(HomeState.initial());

  final BookUsecase usecase;

  void onBuild() {
    getBooks();
  }

  Future<void> refresh() async {
    emit(
      state.copyWith(
        booksLoadState: const ViewData.initial(),
        booksGrid: [],
        books: [],
        isAllLoaded: false,
        params: state.params.copyWith(page: 1),
      ),
    );
    await getBooks();
  }

  Future<void> getBooks() async {
    if (state.isAllLoaded || state.booksLoadState.isLoading) {
      return;
    }

    emit(state.copyWith(booksLoadState: const ViewData.loading()));
    final response = await usecase.getBooks(
      state.params.copyWith(sort: state.sort.value),
    );

    switch (response) {
      case Success(value: final res):
        final booksGrid = [
          ...state.booksGrid,
          ...usecase.mapToBookEntityGrid(
            res.results,
            lastLength: state.books.length,
          ),
        ];
        final books = [...state.books, ...res.results];

        emit(
          state.copyWith(
            booksGrid: booksGrid,
            books: books,
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

  void onSortChanged(SortEnum sort) {
    emit(state.copyWith(sort: sort));
    refresh();
  }
}
