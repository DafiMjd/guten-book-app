
import 'package:domain/domain.dart';
import '../../../local_dependencies.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    required ViewData<void> booksLoadState,
    required List<BookEntityGrid> booksGrid,
    required List<BookEntity> books,
    required ParamListBookEntity params,
    required bool isAllLoaded,
  }) = _HomeState;

  factory HomeState.initial() =>
      const HomeState(
        booksLoadState: ViewData.initial(),
        booksGrid: [],
        books: [],
        params: ParamListBookEntity(page: 1),
        isAllLoaded: false,
      );
}
