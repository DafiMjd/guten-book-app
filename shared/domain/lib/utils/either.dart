import 'package:freezed_annotation/freezed_annotation.dart';

import 'index.dart';

part 'either.freezed.dart';

@freezed
sealed class Either<T> with _$Either<T> {
  const Either._();

  const factory Either.success({required T value}) = Success<T>;
  const factory Either.failure({required BaseException exception}) = Failure<T>;

  bool get isSuccess => this is Success<T>;
  bool get isFailure => this is Failure<T>;
}
