extension ListExtension<T> on List<T> {
  /// Maps each element of the list.
  /// The [mapIndexed] function gets both the original item and its index.
  Iterable<E> mapIndexed<E>(E Function(int index, T item) map) sync* {
    for (var index = 0; index < length; index++) {
      yield map(index, this[index]);
    }
  }

  /// Returns a new list containing the elements between [start] and [end].
  /// If failed return current list
  List<T> subListOrCurrentList(int start, [int? end]) {
    try {
      return sublist(start, end);
    } catch (_) {
      return this;
    }
  }

  List<T> addOrRemoveValueFromList(T value) {
    if (contains(value)) {
      remove(value);
    } else {
      add(value);
    }

    return this;
  }
}
