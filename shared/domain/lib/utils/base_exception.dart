class BaseException {
  final String message;
  final String? code;

  const BaseException(this.message, {this.code});

  String get readableMessage =>
      (code?.isNotEmpty ?? false) ? '$message ($code)' : message;
}
