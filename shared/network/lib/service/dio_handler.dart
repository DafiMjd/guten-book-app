import 'package:dio/dio.dart';

class DioHandler {
  const DioHandler._();

  static Dio getDio({required String apiBaseUrl}) {
    final options = BaseOptions(
      baseUrl: apiBaseUrl,
      connectTimeout: const Duration(seconds: 50),
      receiveTimeout: const Duration(seconds: 30),
    );

    final dio = Dio(options);

    return dio;
  }
}
