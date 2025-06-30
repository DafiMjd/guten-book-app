import '../../data.dart';

class BookRepositoryImpl implements BookRepository {
  @override
  Future<Map<String, dynamic>> getBooks(Map<String, dynamic>? params) async {
    final res = await ApiServices.request(
      path: '/books',
      method: HttpRequestMethod.get,
      queryParameters: params,
    );

    return res.data ?? {};
  }
}
