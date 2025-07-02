import 'package:component/component/index.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/index.dart';

class LikedBookHeaderView extends StatelessWidget {
  const LikedBookHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24).w,
      child: Row(
        children: [
          Expanded(
            child: GtTextField(
              hint: 'Search Books',
              onChanged: context.read<LikedBookCubit>().searchBooks,
            ),
          ),
        ],
      ),
    );
  }
}
