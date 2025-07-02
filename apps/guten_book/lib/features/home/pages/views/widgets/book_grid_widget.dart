import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../../../../book_detail/pages/book_detail_page.dart';

part '_book_widget.dart';

class BookGridWidget extends StatelessWidget {
  const BookGridWidget({
    super.key,
    required this.bookGrid,
    required this.books,
  });

  final BookEntityGrid bookGrid;
  final List<BookEntity> books;

  void goToBookDetail(BuildContext context, {required int index}) {
    Navigator.of(context).push(
      ModalExprollableRouteBuilder<BookDetailPage>(
        pageBuilder: (_, __, ___) =>
            BookDetailPage(books: books, initialIndex: index),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              goToBookDetail(context, index: bookGrid.leftIndex);
            },

            child: _BookWidget(book: bookGrid.left),
          ),
        ),
        Gap(24.w),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (bookGrid.right != null && bookGrid.rightIndex != null) {
                goToBookDetail(context, index: bookGrid.rightIndex!);
              }
            },
            child: _BookWidget(book: bookGrid.right ?? BookEntity.empty()),
          ),
        ),
      ],
    );
  }
}
