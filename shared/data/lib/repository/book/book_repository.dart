abstract class BookRepository {
  Future<Map<String, dynamic>> getBooks(Map<String, dynamic>? params);
}
