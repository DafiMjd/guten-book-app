import 'package:flutter/material.dart';

import '../../../local_dependencies.dart';
import '../cubit/home_cubit.dart';
import 'views/home_view.dart';

@RoutePage()
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
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Guten Book',
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        body: const HomeView(),
      ),
    );
  }
}
