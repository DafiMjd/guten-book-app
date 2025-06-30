import 'package:freezed_annotation/freezed_annotation.dart';

import 'index.dart';

part 'load_state.freezed.dart';

@freezed
class LoadState<T> with _$LoadState<T> {
  const LoadState._();

  const factory LoadState.initial() = Initial<T>;
  const factory LoadState.error({required BaseException exception}) = Errror<T>;
  const factory LoadState.loading() = Loading<T>;
  const factory LoadState.loaded({required T data}) = Loaded<T>;

  bool get isInitial => this is Initial<T>;
  bool get isError => this is Errror<T>;
  bool get isLoading => this is Loading<T>;
  bool get isLoaded => this is Loaded<T>;

  T? get dataOrNull {
    switch (this) {
      case Loaded(data: final data):
        return data;
      default:
        return null;
    }
  }

  BaseException? get errorOrNull {
    switch (this) {
      case Errror(exception: final exception):
        return exception;
      default:
        return null;
    }
  }
}
