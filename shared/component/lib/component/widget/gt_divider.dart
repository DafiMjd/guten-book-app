import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class GtDivider extends StatelessWidget {
  const GtDivider({super.key, this.padding});

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Divider(color: Colors.grey.withValues(alpha: 0.3), height: 1.w),
    );
  }
}
