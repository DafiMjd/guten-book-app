import 'package:dependencies/dependencies.dart' as dep;
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

/// T -> Data Type
class GtBaseLazyLoadListBody<T> extends StatelessWidget {
  const GtBaseLazyLoadListBody({
    super.key,
    required this.loadState,
    required this.datas,
    required this.loadingSkeletonWidget,
    this.padding,
    this.onRefresh,
    required this.itemBuilder,
    this.separatorBuilder,
    required this.onFetchData,
    required this.hasReachedMax,
    this.emptyWidget,
  });

  final LoadState<void> loadState;
  final List<T> datas;
  final Widget loadingSkeletonWidget;
  final EdgeInsets? padding;
  final RefreshCallback? onRefresh;
  final Widget Function(int, T) itemBuilder;
  final Widget Function(BuildContext, int)? separatorBuilder;
  final VoidCallback onFetchData;
  final bool hasReachedMax;
  final Widget? emptyWidget;

  @override
  Widget build(BuildContext context) {
    final isDataExists = datas.isNotEmpty;
    final isFirstLoading = loadState.isLoading && !isDataExists;
    final isLazyLoadLoading = loadState.isLoading && isDataExists;
    final isFirstError = loadState.isError && !isDataExists;
    final isLazyLoadError = loadState.isError && isDataExists;

    if (isFirstLoading) {
      return dep.Skeletonizer(
        child: ListView.separated(
          padding: padding,
          itemCount: 7,
          itemBuilder: (_, __) => loadingSkeletonWidget,
          separatorBuilder:
              separatorBuilder ?? (_, __) => const SizedBox.shrink(),
        ),
      );
    } else if (isFirstError) {
      return Text(loadState.errorOrNull?.message ?? 'Error Occured');
    } else {
      return RefreshIndicator(
        onRefresh: onRefresh ?? () async {},
        notificationPredicate: onRefresh != null ? (_) => true : (_) => false,
        child: dep.InfiniteList(
          padding: padding,
          itemCount: datas.length,
          isLoading: isLazyLoadLoading,
          onFetchData: onFetchData,
          separatorBuilder: separatorBuilder,
          itemBuilder: (context, index) {
            final data = datas[index];

            return itemBuilder(index, data);
          },
          hasError: isLazyLoadError,
          emptyBuilder: (_) => emptyWidget ?? const SizedBox(),
          errorBuilder: (context) => Text(loadState.errorOrNull?.message ?? 'Error Occured'),
          hasReachedMax: hasReachedMax,
        ),
      );
    }
  }
}
