
import 'package:domain/domain.dart';
import '../../../local_dependencies.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    required LoadState<void> booksLoadState,
    required List<BookEntityGrid> books,
    required ParamListBookEntity params,
    required bool isAllLoaded,
  }) = _HomeState;

  factory HomeState.initial() =>
      const HomeState(
        booksLoadState: LoadState.initial(),
        books: [],
        params: ParamListBookEntity(page: 1),
        isAllLoaded: false,
      );
}
