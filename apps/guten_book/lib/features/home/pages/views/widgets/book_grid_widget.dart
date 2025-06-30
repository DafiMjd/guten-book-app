import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

part '_book_widget.dart';

class BookGridWidget extends StatelessWidget {
  const BookGridWidget({super.key, required this.bookGrid});

  final BookEntityGrid bookGrid;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _BookWidget(book: bookGrid.left)),
        Gap(24.w),
        Expanded(child: _BookWidget(book: bookGrid.right ?? BookEntity.empty())),
      ],
    );
  }
}
