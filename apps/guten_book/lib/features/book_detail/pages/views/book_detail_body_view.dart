import 'package:dependencies/dependencies.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'widgets/index.dart';

class BookDetailBodyView extends StatelessWidget {
  const BookDetailBodyView({super.key, required this.book});

  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24).w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BookDetailSectionTitleWidget(title: 'Summaries'),
          Gap(8.w),
          ...book.summaries.map(
            (e) => Text(e, style: Theme.of(context).textTheme.bodyLarge),
          ),
        ],
      ),
    );
  }
}
