part of 'book_grid_widget.dart';

class _BookWidget extends StatelessWidget {
  const _BookWidget({required this.book});

  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GtExtendedImageNetwork(
          imgUrl: book.formats.imageJpeg ?? '',
          fit: BoxFit.contain,
          width: double.maxFinite,
          height: 150.w,
          compressionRatio: 0.7,
          loadingWidget: Skeletonizer(
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Image.asset(
                Assets.book.img.dummyBook.path,
                fit: BoxFit.contain,
                package: 'component',
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
                  height: 50.w,
                  child: AutoSizeText(
                    book.title,
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(color: Colors.black87),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  book.authorName,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: Colors.black87),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        Gap(4.w),
        Text(
          book.title,
          style: Theme.of(context).textTheme.titleMedium,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          book.authorName,
          style: Theme.of(context).textTheme.bodyMedium,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
