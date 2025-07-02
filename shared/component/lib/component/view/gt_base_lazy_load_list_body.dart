import 'package:dependencies/dependencies.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../../component.dart';

/// T -> Data Type
class GtBaseLazyLoadListBody<T> extends StatelessWidget {
  const GtBaseLazyLoadListBody({
    super.key,
    required this.loadState,
    required this.datas,
    this.padding,
    this.onRefresh,
    required this.itemBuilder,
    this.separatorBuilder,
    required this.onFetchData,
    required this.hasReachedMax,
    this.emptyWidget,
    this.onErrorRetry,
  });

  final ViewData<void> loadState;
  final List<T> datas;
  final EdgeInsets? padding;
  final RefreshCallback? onRefresh;
  final Widget Function(int, T) itemBuilder;
  final Widget Function(BuildContext, int)? separatorBuilder;
  final VoidCallback onFetchData;
  final bool hasReachedMax;
  final Widget? emptyWidget;
  final VoidCallback? onErrorRetry;

  @override
  Widget build(BuildContext context) {
    final isDataExists = datas.isNotEmpty;
    final isFirstLoading = loadState.isLoading && !isDataExists;
    final isLazyLoadLoading = loadState.isLoading && isDataExists;
    final isFirstError = loadState.isError && !isDataExists;
    final isLazyLoadError = loadState.isError && isDataExists;

    if (isFirstLoading) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            Gap(16.w),
            Text('Loading', style: GtAppTheme.textTheme.bodyMedium),
          ],
        ),
      );
    } else if (isFirstError) {
      return GtErrorState(
        text: loadState.errorOrNull?.message ?? 'Error Occured',
        onRetry: onErrorRetry,
      );
    } else {
      return RefreshIndicator(
        onRefresh: onRefresh ?? () async {},
        notificationPredicate: onRefresh != null ? (_) => true : (_) => false,
        child: InfiniteList(
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
          errorBuilder: (context) => Column(
            children: [
              Text(
                loadState.errorOrNull?.message ?? 'Error Occured',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              if (onErrorRetry != null) ...[
                Gap(4.w),
                ElevatedButton(
                  onPressed: onFetchData,
                  child: Text(
                    'Retry',
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall?.copyWith(color: GtAppTheme.primary),
                  ),
                ),
              ],
            ],
          ),
          hasReachedMax: hasReachedMax,
        ),
      );
    }
  }
}
