import 'package:domain/entity/book/index.dart';

class BookDummy {
  static List<BookEntity> get _books => [
    BookEntity.empty().copyWith(id: 1, title: 'Book 1'),
    BookEntity.empty().copyWith(id: 2, title: 'Book 2'),
    BookEntity.empty().copyWith(id: 3, title: 'Book 3'),
    BookEntity.empty().copyWith(id: 4, title: 'Book 4'),
    BookEntity.empty().copyWith(id: 5, title: 'Book 5'),
    BookEntity.empty().copyWith(id: 6, title: 'Book 6'),
    BookEntity.empty().copyWith(id: 7, title: 'Book 7'),
  ];

  static List<BookEntity> get booksPage2 => [
    BookEntity.empty().copyWith(id: 9, title: 'Book 9'),
    BookEntity.empty().copyWith(id: 10, title: 'Book 10'),
    BookEntity.empty().copyWith(id: 11, title: 'Book 11'),
    BookEntity.empty().copyWith(id: 12, title: 'Book 12'),
    BookEntity.empty().copyWith(id: 13, title: 'Book 11'),
    BookEntity.empty().copyWith(id: 14, title: 'Book 12'),
    BookEntity.empty().copyWith(id: 15, title: 'Book 11'),
    BookEntity.empty().copyWith(id: 16, title: 'Book 12'),
  ];

  static List<BookEntity> get booksOdd => _books;

  static List<BookEntity> get booksEven => [
    ..._books,
    BookEntity.empty().copyWith(id: 8, title: 'Book 8'),
  ];

  static List<BookEntityGrid> get _bookEntityGrid => [
    BookEntityGrid(
      left: _books[0],
      leftIndex: 0,
      right: _books[1],
      rightIndex: 1,
    ),
    BookEntityGrid(
      left: _books[2],
      leftIndex: 2,
      right: _books[3],
      rightIndex: 3,
    ),
    BookEntityGrid(
      left: _books[4],
      leftIndex: 4,
      right: _books[5],
      rightIndex: 5,
    ),
  ];

  static List<BookEntityGrid> get bookEntityGridEven => [
    ..._bookEntityGrid,
    BookEntityGrid(
      left: booksEven[6],
      leftIndex: 6,
      right: booksEven[7],
      rightIndex: 7,
    ),
  ];

  static List<BookEntityGrid> get bookEntityGridOdd => [
    ..._bookEntityGrid,
    BookEntityGrid(left: booksOdd[6], leftIndex: 6),
  ];

  static List<int> get savedBookIds => [1, 2, 4, 7, 8];

  static Map<int, bool> get idVisibilityMap => {
    1: true,
    2: true,
    3: false,
    4: true,
    5: false,
    6: false,
    7: true,
    8: true,
  };
}
