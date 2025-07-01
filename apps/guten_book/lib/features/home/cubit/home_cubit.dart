import 'package:data/data.dart';
import 'package:domain/domain.dart';
import '../../../local_dependencies.dart';

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
        booksLoadState: const LoadState.initial(),
        booksGrid: [],
        books: [],
        isAllLoaded: false,
        params: const ParamListBookEntity(page: 1),
      ),
    );
    await getBooks();
  }

  Future<void> getBooks() async {
    if (state.isAllLoaded) {
      return;
    }

    emit(state.copyWith(booksLoadState: const LoadState.loading()));
    final response = await usecase.getBooks(state.params);

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
            booksLoadState: const LoadState.loaded(data: null),
            isAllLoaded: res.next == null,
            params: state.params.nextPage,
          ),
        );
      case Failure(exception: final exception):
        emit(
          state.copyWith(booksLoadState: LoadState.error(exception: exception)),
        );
    }
  }
}
