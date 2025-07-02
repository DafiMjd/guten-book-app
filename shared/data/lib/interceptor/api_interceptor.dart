import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  ApiInterceptor();

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final noInternetMessages = [
      'failed host lookup',
      'connection refused',
      'no internet connection',
      'no_internet_connection',
      'software caused connection abort',
    ];

    final isNoInternet = noInternetMessages.any(
      (message) => err.message?.toLowerCase().contains(message) ?? false,
    );

    final usedDioError = err.copyWith(
      message: isNoInternet ? 'No internet connection' : err.message,
    );

    return handler.next(usedDioError);
  }
}
