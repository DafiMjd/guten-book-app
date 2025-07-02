import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class LikedBookWidget extends StatelessWidget {
  const LikedBookWidget({
    super.key,
    required this.book,
    required this.isSaved,
    required this.onSaveTapped,
  });

  final BookEntity book;
  final bool isSaved;
  final VoidCallback onSaveTapped;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GtBookImage(
          book: book,
          height: 70.w,
          width: 50.w,
          compressionRatio: 1,
          clearMemoryCacheWhenDispose: true,
          errorWidget: Container(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.w),
            height: 70.w,
            width: 50.w,
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
                  height: 30.w,
                  child: AutoSizeText(
                    minFontSize: 8,
                    book.title,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.black87,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  book.authorName,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.black87,
                    fontSize: 6,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        Gap(8.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book.title,
                style: Theme.of(context).textTheme.titleMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Gap(2.w),
              Text(
                book.authorName,
                style: Theme.of(context).textTheme.bodyMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        Gap(8.w),
        GtSaveButton(isSaved: isSaved, onTap: onSaveTapped),
      ],
    );
  }
}
