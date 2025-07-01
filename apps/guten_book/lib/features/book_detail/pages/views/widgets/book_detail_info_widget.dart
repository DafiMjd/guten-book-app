import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class BookDetailInfoWidget extends StatelessWidget {
  const BookDetailInfoWidget({
    super.key,
    required this.title,
    required this.child,
    this.subtitle,
  });

  final String title;
  final Widget child;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.labelSmall?.copyWith(color: Colors.grey),
        ),
        Gap(4.w),
        child,
        if (subtitle != null) ...[
          Gap(4.w),
          Text(
            subtitle!,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400),
          ),
        ],
      ],
    );
  }
}
