import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../../cubit/index.dart';
import 'widgets/index.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return GtBaseLazyLoadListBody(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24).w,
          loadState: state.booksLoadState,
          datas: state.booksGrid,
          itemBuilder: (index, data) {
            return BookGridWidget(books: state.books, bookGrid: data);
          },
          separatorBuilder: (context, index) => Gap(24.w),
          onRefresh: cubit.refresh,
          onFetchData: cubit.getBooks,
          hasReachedMax: state.isAllLoaded,
          emptyWidget: const GtEmptyState(text: 'No books found'),
          onErrorRetry: cubit.refresh,
        );
      },
    );
  }
}
