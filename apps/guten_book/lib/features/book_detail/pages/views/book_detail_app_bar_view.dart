import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class BookDetailAppBarView extends StatefulWidget {
  const BookDetailAppBarView({
    super.key,
    required this.title,
    required this.thresholdScrollOffset,
  });

  final String title;
  final double thresholdScrollOffset;

  @override
  State<BookDetailAppBarView> createState() => _BookDetailAppBarViewState();
}

class _BookDetailAppBarViewState extends State<BookDetailAppBarView> {
  bool isShown = false;
  ScrollController? controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final newController = PageContentScrollController.of(context);
    assert(
      newController != null,
      '$BookDetailAppBarView can only be used in a subtree of $ExprollablePageView.',
    );
    if (newController != controller) {
      controller?.removeListener(invalidateState);
      controller = newController!..addListener(invalidateState);
      correctState();
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller?.removeListener(invalidateState);
  }

  void invalidateState() {
    final isShown = this.isShown;
    correctState();
    if (isShown != this.isShown) {
      setState(() {});
    }
  }

  void correctState() {
    isShown = controller!.offset > widget.thresholdScrollOffset;
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).w,
        child: Text(
          widget.title,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );

    const shadowExtent = 12;
    final appBarHeight =
        appBar.preferredSize.height + MediaQuery.of(context).padding.top;

    return AnimatedPositioned(
      top: isShown ? 0.0 : -1 * (appBarHeight + shadowExtent),
      left: 0.0,
      right: 0.0,
      duration: const Duration(milliseconds: 150),
      child: AdaptivePagePadding(useSafeArea: false, child: appBar),
    );
  }
}
