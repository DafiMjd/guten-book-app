import 'package:domain/domain.dart';
import '../../../local_dependencies.dart';

part 'liked_book_state.freezed.dart';

@freezed
sealed class LikedBookState with _$LikedBookState {
  const LikedBookState._();

  const factory LikedBookState({
    required ViewData<void> booksLoadState,
    required ViewData<List<int>> savedBookIdsState,
    required Map<BookEntity, bool> booksMap,
    required ParamListBookEntity params,
    required bool isAllLoaded,
    required ViewData<void> updateBookIdState,
  }) = _LikedBookState;

  List<int> get savedBookIds => savedBookIdsState.dataOrNull ?? [];

  factory LikedBookState.initial() => const LikedBookState(
    savedBookIdsState: ViewData.initial(),
    booksLoadState: ViewData.initial(),
    booksMap: {},
    params: ParamListBookEntity(page: 1, sort: 'ascending'),
    isAllLoaded: false,
    updateBookIdState: ViewData.initial(),
  );
}
