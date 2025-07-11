part of 'book_grid_widget.dart';

class _BookWidget extends StatelessWidget {
  const _BookWidget({required this.book});

  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GtBookImage(book: book),
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
