import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../cubit/liked_book_cubit.dart';
import 'views/index.dart';

class LikedBookPage extends StatefulWidget {
  const LikedBookPage({super.key});

  @override
  State<LikedBookPage> createState() => _LikedBookPageState();
}

class _LikedBookPageState extends State<LikedBookPage> {
  final cubit = LikedBookCubit();

  @override
  void initState() {
    super.initState();
    cubit.onBuild();
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: Column(
        children: [
          const LikedBookHeaderView(),
          Gap(16.w),
          const Expanded(child: LikedBookBodyView()),
        ],
      ),
    );
  }
}
