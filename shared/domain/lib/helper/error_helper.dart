import 'package:dio/dio.dart';

import '../utils/index.dart';

class ErrorHelper {
  const ErrorHelper._();

  static BaseException handleError({required Object error}) {
    if (error is DioException) {
      return BaseException(
        error.message ?? '',
        code: error.response?.statusCode.toString(),
      );
    } else {
      return BaseException(error.toString());
    }
  }
}
