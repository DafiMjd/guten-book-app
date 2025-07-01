import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'views/index.dart';
import 'views/main_body_view.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final selectedIndexNotifier = ValueNotifier<int>(0);

  @override
  void dispose() {
    selectedIndexNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Guten Book',
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      bottomNavigationBar: MainNavbarView(
        selectedIndexNotifier: selectedIndexNotifier,
      ),
      body: MainBodyView(selectedIndexNotifier: selectedIndexNotifier)
    );
  }
}
