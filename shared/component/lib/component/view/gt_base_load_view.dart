import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class GtBaseLoadView<T> extends StatelessWidget {
  const GtBaseLoadView({
    super.key,
    required this.loadState,
    this.initialBuilder,
    required this.loadingBuilder,
    required this.errorBuilder,
    required this.loadedBuilder,
  });

  final LoadState<T> loadState;
  final Widget Function()? initialBuilder;
  final Widget Function() loadingBuilder;
  final Widget Function(BaseException) errorBuilder;
  final Widget Function(T) loadedBuilder;


  @override
  Widget build(BuildContext context) {
    return switch (loadState) {
      Loading<T>() => loadingBuilder(),
      Errror<T>(exception: final error) => errorBuilder(error),
      Loaded<T>(data: final data) => loadedBuilder(data),
      Initial<T>() => initialBuilder?.call() ?? const SizedBox(),
      _ => initialBuilder?.call() ?? const SizedBox(),
    };
  }
}
