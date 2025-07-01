import '../index.dart';

class BookEntityGrid {
  final BookEntity left;
  final int leftIndex;
  final BookEntity? right;
  final int? rightIndex;

  BookEntityGrid({
    required this.left,
    required this.leftIndex,
    this.right,
    this.rightIndex,
  });
}
