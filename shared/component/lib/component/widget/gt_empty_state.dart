import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../../assets/index.dart';
import '../../theme/index.dart';

class GtEmptyState extends StatelessWidget {
  const GtEmptyState({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          Assets.book.svg.icBookOpen,
          width: 40.w,
          height: 40.w,
          colorFilter: const ColorFilter.mode(
            GtAppTheme.secondary,
            BlendMode.srcIn,
          ),
          package: 'component',
        ),
        Gap(16.w),
        Text(text, style: Theme.of(context).textTheme.titleLarge?.copyWith()),
      ],
    );
  }
}
