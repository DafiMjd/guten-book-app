import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../../../../local_dependencies.dart';
import '../../cubit/index.dart';
import 'widgets/index.dart';

class BookDetailHeaderView extends StatelessWidget {
  const BookDetailHeaderView({super.key, required this.book});

  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BookDetailCubit>();

    return BlocBuilder<BookDetailCubit, BookDetailState>(
      builder: (context, state) {
        final bookMap = state.bookMap;
        final isSaved = bookMap[book.id] ?? false;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(40.w),
            GtBookImage(
              book: book,
              compressionRatio: 1,
              height: 400.w,
              clearMemoryCacheWhenDispose: true,
              titleHeight: 200.w,
              titleStyle: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: Colors.black87,
                fontSize: 26,
              ),
              authorStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.black87,
                fontSize: 22,
              ),
            ),
            Gap(24.w),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.title,
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                  Gap(16.w),
                  const BookDetailSectionTitleWidget(title: 'Author(s)'),
                  Gap(6.w),
                  BookDetailAuthorWidget(
                    authors: book.authors,
                    isSaved: isSaved,
                    enabled: state.getBookIdsState.isLoaded,
                    onSaveTapped: () => isSaved
                        ? cubit.removeBookId(book.id)
                        : cubit.saveBookId(book.id),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
