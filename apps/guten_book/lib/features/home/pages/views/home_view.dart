import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/index.dart';
import 'widgets/index.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    final emptyBook = BookEntity.empty().copyWith(
      title: 'Loading...',
      authors: const [AuthorEntity(name: 'Loading...')],
    );

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return GtBaseLazyLoadListBody(
          padding: const EdgeInsets.symmetric(horizontal: 24).w,
          loadState: state.booksLoadState,
          datas: state.books,
          loadingSkeletonWidget: BookGridWidget(
            bookGrid: BookEntityGrid(left: emptyBook, right: emptyBook),
          ),
          itemBuilder: (index, data) {
            return BookGridWidget(bookGrid: data);
          },
          separatorBuilder: (context, index) => Gap(24.w),
          onRefresh: cubit.refresh,
          onFetchData: cubit.getBooks,
          hasReachedMax: state.isAllLoaded,
        );
      },
    );
  }
}
