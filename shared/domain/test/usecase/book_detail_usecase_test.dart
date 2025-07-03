import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';

import '../dummy/index.dart';

void main() {
  late final BookDetailUsecase bookDetailUsecase;

  setUpAll(() {
    AppGetIt.setup();
    bookDetailUsecase = BookDetailUsecase();
  });

  group('Form Selected Id Map', () {
    test('should map id book and visibility', () {
      // Arrange
      final input = BookDummy.booksEven;
      final expectedOutput = BookDummy.idVisibilityMap;

      // Act
      final output = bookDetailUsecase.formBookMap(
        input,
        BookDummy.savedBookIds,
      );
      // Assert
      expect(output, expectedOutput);
    });
  });
}
