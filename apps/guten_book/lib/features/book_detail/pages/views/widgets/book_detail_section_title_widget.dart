import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class BookDetailSectionTitleWidget extends StatelessWidget {
  const BookDetailSectionTitleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.headlineSmall?.copyWith(color: Colors.grey, fontSize: 16.w),
    );
  }
}
