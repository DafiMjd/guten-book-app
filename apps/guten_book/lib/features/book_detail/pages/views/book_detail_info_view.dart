import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'widgets/index.dart';

class BookDetailInfoView extends StatelessWidget {
  const BookDetailInfoView({super.key, required this.book});

  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24).w,
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BookDetailInfoWidget(
                title: 'Downloaded',
                subtitle: 'Time(s)',
                child: Text(
                  StringHelper.conciseNumber(book.downloadCount),
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              Gap(16.w),
              BookDetailInfoWidget(
                title: 'Languages',
                child: Row(
                  children: [
                    ...book.languages.map((e) {
                      final isLast = e == book.languages.last;

                      return Padding(
                        padding: EdgeInsets.only(right: isLast ? 0 : 6.w),
                        child: Column(
                          children: [
                            Text(
                              e.toUpperCase(),
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Gap(4.w),
                            Text(
                              LanguageEnum.fromString(e).text,
                              style: Theme.of(context).textTheme.bodyLarge
                                  ?.copyWith(fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      );
                    }),
                  ],
                ),
              ),
              if (book.copyright) ...[
                Gap(16.w),
                BookDetailInfoWidget(
                  title: 'Copyright',
                  child: SvgPicture.asset(
                    Assets.book.svg.icCopyright,
                    width: 18.w,
                    height: 18.w,
                    colorFilter: const ColorFilter.mode(
                      GtAppTheme.secondary,
                      BlendMode.srcIn,
                    ),
                    package: 'component',
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
