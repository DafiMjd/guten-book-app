import 'package:freezed_annotation/freezed_annotation.dart';

import 'index.dart';

part 'view_data.freezed.dart';

@freezed
class ViewData<T> with _$ViewData<T> {
  const ViewData._();

  const factory ViewData.initial() = Initial<T>;
  const factory ViewData.error({required BaseException exception}) = Errror<T>;
  const factory ViewData.loading() = Loading<T>;
  const factory ViewData.loaded({required T data}) = Loaded<T>;

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
