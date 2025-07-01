import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Widget toSliver({EdgeInsets? padding}) {
    if (padding != null) {
      return SliverPadding(
        padding: padding,
        sliver: SliverToBoxAdapter(child: this),
      );
    }

    return SliverToBoxAdapter(child: this);
  }
}
