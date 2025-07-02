import 'package:domain/domain.dart';
import '../../../local_dependencies.dart';

part 'book_detail_state.freezed.dart';

@freezed
sealed class BookDetailState with _$BookDetailState {
  const factory BookDetailState({
    required ViewData<void> updateBookIdState,
    required ViewData<void> getBookIdsState,
    // It is used to determine which books are marked as saved in the UI and for related logic.
    required List<int> bookIds,
    // used to show list of books in book detail page
    required List<BookEntity> books,
    // int = id, bool = isSaved
    required Map<int, bool> bookMap,
  }) = _BookDetailState;

  factory BookDetailState.initial() => const BookDetailState(
    updateBookIdState: ViewData.initial(),
    getBookIdsState: ViewData.initial(),
    bookIds: [],
    books: [],
    bookMap: {},
  );
}
