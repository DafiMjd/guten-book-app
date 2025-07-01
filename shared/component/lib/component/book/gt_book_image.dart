import 'package:dependencies/dependencies.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../../component.dart';

class GtBookImage extends StatelessWidget {
  const GtBookImage({
    super.key,
    required this.book,
    this.compressionRatio,
    this.height,
    this.clearMemoryCacheWhenDispose = false,
    this.titleStyle,
    this.authorStyle,
    this.titleHeight,
  });

  final BookEntity book;
  final double? compressionRatio;
  final double? height;
  final bool clearMemoryCacheWhenDispose;
  final TextStyle? titleStyle;
  final TextStyle? authorStyle;
  final double? titleHeight;

  @override
  Widget build(BuildContext context) {
    return GtExtendedImageNetwork(
      imgUrl: book.formats.imageJpeg ?? '',
      fit: BoxFit.contain,
      clearMemoryCacheWhenDispose: true,
      width: double.maxFinite,
      height: height ?? 150.w,
      compressionRatio: compressionRatio ?? 0.7,
      loadingWidget: AbsorbPointer(
        child: Skeletonizer(
          child: DecoratedBox(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
            child: Image.asset(
              Assets.book.img.dummyBook.path,
              fit: BoxFit.contain,
              package: 'component',
            ),
          ),
        ),
      ),
      errorWidget: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.w),
        width: double.maxFinite,
        height: 150.w,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: titleHeight ?? 50.w,
              child: AutoSizeText(
                book.title,
                style:
                    titleStyle ??
                    Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(color: Colors.black87),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              book.authorName,
              style:
                  authorStyle ??
                  Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: Colors.black87),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
