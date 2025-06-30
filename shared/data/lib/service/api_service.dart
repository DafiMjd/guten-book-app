import 'package:dio/dio.dart';

import '../data.dart';
import 'dio_handler.dart';

enum HttpRequestMethod {
  get,
  post,
  put,
  delete,
  patch;

  String get name => switch (this) {
    HttpRequestMethod.get => 'GET',
    HttpRequestMethod.post => 'POST',
    HttpRequestMethod.put => 'PUT',
    HttpRequestMethod.delete => 'DELETE',
    HttpRequestMethod.patch => 'PATCH',
  };
}

class ApiServices {
  static Future<Response<Map<String, dynamic>>> request({
    required String path,
    required HttpRequestMethod method,
    Map<String, dynamic>? queryParameters,
    dynamic data,
  }) async {
    final headers = <String, String>{'Content-Type': 'application/json'};

    final dio = DioHandler.getDio(apiBaseUrl: ApiUrl.baseUrl);

    final res = await dio.request<Map<String, dynamic>>(
      path,
      queryParameters: queryParameters,
      data: data,
      options: Options(headers: headers),
    );

    return res;
  }
}
