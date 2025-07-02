import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../../../book_detail/pages/book_detail_page.dart';
import '../../cubit/index.dart';
import 'widgets/index.dart';

class LikedBookBodyView extends StatelessWidget {
  const LikedBookBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LikedBookCubit>();

    return BlocBuilder<LikedBookCubit, LikedBookState>(
      builder: (context, state) {
        final books = state.booksMap.keys.toList();
        return GtBaseLazyLoadListBody(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24).w,
          loadState: state.booksLoadState,
          datas: books,
          itemBuilder: (index, data) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  ModalExprollableRouteBuilder<BookDetailPage>(
                    pageBuilder: (_, __, ___) =>
                        BookDetailPage(books: books, initialIndex: index),
                  ),
                );
              },
              child: LikedBookWidget(
                book: data,
                isSaved: state.booksMap[data] ?? false,
                onSaveTapped: () => cubit.onSaveTapped(data),
              ),
            );
          },
          separatorBuilder: (context, index) =>
              GtDivider(padding: const EdgeInsets.fromLTRB(54, 0, 0, 0).w),
          onRefresh: cubit.refresh,
          onFetchData: cubit.getBooks,
          hasReachedMax: state.isAllLoaded,
        );
      },
    );
  }
}
