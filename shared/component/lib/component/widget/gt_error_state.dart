import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../../assets/index.dart';
import '../../theme/index.dart';

class GtErrorState extends StatelessWidget {
  const GtErrorState({super.key, required this.text, this.onRetry});

  final String text;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24).w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          Text(text, style: Theme.of(context).textTheme.titleLarge),
          if (onRetry != null) ...[
            Gap(4.w),
            ElevatedButton(
              onPressed: onRetry,
              child: Text(
                'Retry',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(color: GtAppTheme.primary),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
