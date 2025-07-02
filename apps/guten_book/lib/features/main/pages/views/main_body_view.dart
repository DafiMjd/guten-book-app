import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../../../home/pages/home_page.dart';
import '../../../liked_book/pages/liked_book_page.dart';

class MainBodyView extends StatelessWidget {
  const MainBodyView({super.key, required this.selectedIndexNotifier});

  final ValueNotifier<int> selectedIndexNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndexNotifier,
      builder: (context, selectedIndex, _) {
        return LazyLoadIndexedStack(
          index: selectedIndex,
          children: const [HomePage(), LikedBookPage()],
        );
      },
    );
  }
}
