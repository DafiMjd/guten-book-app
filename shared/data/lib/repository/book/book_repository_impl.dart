import '../../data.dart';

class BookRepositoryImpl implements BookRepository {
  @override
  Future<Map<String, dynamic>> getBooks() async {
    final res = await ApiServices.request(
      path: '/books',
      method: HttpRequestMethod.get,
    );

    return res.data ?? {};
  }
}
