import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import 'widgets/index.dart';

class MainNavbarView extends StatelessWidget {
  const MainNavbarView({super.key, required this.selectedIndexNotifier});

  final ValueNotifier<int> selectedIndexNotifier;

  // ignore: avoid_setters_without_getters
  set changeSelectedIndex(int index) => selectedIndexNotifier.value = index;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndexNotifier,
      builder: (context, selectedIndex, _) {
        return Container(
          padding: EdgeInsets.fromLTRB(
            8.w,
            0.w,
            8.w,
            kBottomNavigationBarHeight > 24.w
                ? 24.w
                : kBottomNavigationBarHeight,
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 8,
                color: Colors.black.withValues(alpha: 0.05),
              ),
            ],
            color: const Color.fromARGB(255, 42, 39, 39),
          ),
          child: Row(
            children: [
              Expanded(
                child: MainNavbarWidget(
                  label: 'Home',
                  inactivePath: Assets.book.svg.icHomeInactive,
                  activePath: Assets.book.svg.icHomeActive,
                  isActive: selectedIndex == 0,
                  onTap: () => changeSelectedIndex = 0,
                ),
              ),
              Expanded(
                child: MainNavbarWidget(
                  label: 'Loved Books',
                  inactivePath: Assets.book.svg.icHeartInactive,
                  activePath: Assets.book.svg.icHeartActive,
                  isActive: selectedIndex == 1,
                  onTap: () => changeSelectedIndex = 1,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
