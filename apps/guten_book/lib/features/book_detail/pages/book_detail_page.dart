import 'package:component/component/widget/index.dart';
import 'package:dependencies/dependencies.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../../../local_dependencies.dart';
import 'views/index.dart';

@RoutePage()
class BookDetailPage extends StatefulWidget {
  const BookDetailPage({
    super.key,
    required this.books,
    required this.initialIndex,
  });

  final List<BookEntity> books;
  final int initialIndex;

  @override
  State<BookDetailPage> createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  late final ExprollablePageController controller;

  @override
  void initState() {
    super.initState();
    controller = ExprollablePageController(
      initialPage: widget.initialIndex,
      viewportConfiguration: ViewportConfiguration(overshootEffect: true),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExprollablePageView(
        controller: controller,
        itemCount: widget.books.length,
        itemBuilder: (context, index) {
          final book = widget.books[index];

          return PageGutter(
            gutterWidth: 8,
            child: Card(
              margin: EdgeInsets.zero,
              clipBehavior: Clip.antiAlias,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: CustomScrollView(
                      controller: PageContentScrollController.of(context),
                      slivers: [
                        BookDetailHeaderView(book: book).toSliver(),
                        GtDivider(
                          padding: const EdgeInsets.symmetric(vertical: 16).w,
                        ).toSliver(),
                        BookDetailInfoView(book: book).toSliver(),
                        GtDivider(
                          padding: const EdgeInsets.symmetric(vertical: 16).w,
                        ).toSliver(),
                        BookDetailBodyView(book: book).toSliver(),
                        SliverGap(24.w),
                      ],
                    ),
                  ),
                  BookDetailAppBarView(
                    thresholdScrollOffset: 4,
                    title: widget.books[index].title,
                  ),
                  Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: AdaptivePagePadding(
                      child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.cancel, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
