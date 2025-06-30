import 'package:dependencies/dependencies.dart';
import 'package:floating_draggable_widget/floating_draggable_widget.dart';
import 'package:flutter/material.dart';

class DevToolFab extends StatelessWidget {
  const DevToolFab({super.key, required this.mainScreenWidget});

  final Widget mainScreenWidget;

  @override
  Widget build(BuildContext context) {
    return FloatingDraggableWidget(
      mainScreenWidget: mainScreenWidget,
      floatingWidget: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.settings),
      ),
      floatingWidgetHeight: 40,
      floatingWidgetWidth: 40,
      dx: 1.sw - 40,
      dy: 0 + 100,
    );
  }
}
