import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';

import '../dummy/index.dart';

void main() {
  late final BookUsecase bookUsecase;

  setUpAll(() {
    AppGetIt.setup();
    bookUsecase = BookUsecase();
  });

  group('Map to Book Entity Grid', () {
    test('should map even number of books', () {
      // Arrange
      final input = BookDummy.booksEven;
      final expectedOutput = BookDummy.bookEntityGridEven;

      // Act
      final output = bookUsecase.mapToBookEntityGrid(input, lastLength: 0);
      // Assert
      expect(output.length, expectedOutput.length);
    });

    test('should map odd number of books', () {
      // Arrange
      final input = BookDummy.booksOdd;
      final expectedOutput = BookDummy.bookEntityGridOdd;

      // Act
      final output = bookUsecase.mapToBookEntityGrid(input, lastLength: 0);

      // Assert
      expect(output.length, expectedOutput.length);
    });

    test('pagination - page 2 of book', () {
      // Arrange
      final input = BookDummy.booksEven;
      const expectedLastLeftIndex = 14;
      const expectedLastRightIndex = 15;

      // Act
      final books = bookUsecase.mapToBookEntityGrid(input, lastLength: 0);
      final page2Books = [
        ...books,
        ...bookUsecase.mapToBookEntityGrid(
          BookDummy.booksPage2,
          lastLength: input.length,
        ),
      ];

      // Assert
      expect(page2Books.last.leftIndex, expectedLastLeftIndex);
      expect(page2Books.last.rightIndex, expectedLastRightIndex);
    });
  });
}
