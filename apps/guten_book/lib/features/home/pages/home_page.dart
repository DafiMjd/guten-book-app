import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../cubit/home_cubit.dart';
import 'views/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final cubit = HomeCubit();

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
          const HomeHeaderView(),
          Gap(16.w),
          const Expanded(child: HomeBodyView()),
        ],
      ),
    );
  }
}
