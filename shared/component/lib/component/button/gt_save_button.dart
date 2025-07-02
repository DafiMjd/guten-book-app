import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../../component.dart';

class GtSaveButton extends StatelessWidget {
  const GtSaveButton({
    super.key,
    required this.isSaved,
    required this.onTap,
    this.enabled = true,
  });

  final bool isSaved;
  final bool enabled;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled ? onTap : null,
      child: SvgPicture.asset(
        isSaved
            ? Assets.book.svg.icHeartActive
            : Assets.book.svg.icHeartInactive,
        width: 32.w,
        height: 32.w,
        colorFilter: ColorFilter.mode(
          GtAppTheme.secondary.withValues(alpha: enabled ? 1 : 0.1),
          BlendMode.srcIn,
        ),
        package: 'component',
      ),
    );
  }
}
