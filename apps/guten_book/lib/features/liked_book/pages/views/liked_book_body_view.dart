import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

import '../../cubit/index.dart';
import 'widgets/index.dart';

class LikedBookBodyView extends StatelessWidget {
  const LikedBookBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LikedBookCubit>();

    return BlocBuilder<LikedBookCubit, LikedBookState>(
      builder: (context, state) {
        return GtBaseLazyLoadListBody(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24).w,
          loadState: state.booksLoadState,
          datas: state.booksMap.keys.toList(),
          itemBuilder: (index, data) {
            return LikedBookWidget(
              book: data,
              isSaved: state.booksMap[data] ?? false,
              onSaveTapped: () => cubit.onSaveTapped(data),
            );
          },
          separatorBuilder: (context, index) =>
              GtDivider(padding: const EdgeInsets.fromLTRB(54, 12, 0, 12).w),
          onRefresh: cubit.refresh,
          onFetchData: cubit.getBooks,
          hasReachedMax: state.isAllLoaded,
        );
      },
    );
  }
}
