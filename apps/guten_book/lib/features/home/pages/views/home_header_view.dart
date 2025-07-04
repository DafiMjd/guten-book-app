import 'package:component/component/index.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../../cubit/index.dart';

class HomeHeaderView extends StatelessWidget {
  const HomeHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24).w,
      child: Row(
        children: [
          Expanded(
            child: GtTextField(
              hint: 'Search Books',
              onChanged: context.read<HomeCubit>().searchBooks,
            ),
          ),
        ],
      ),
    );
  }
}
