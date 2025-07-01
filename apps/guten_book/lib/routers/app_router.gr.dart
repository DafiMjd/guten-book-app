// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:collection/collection.dart' as _i6;
import 'package:domain/domain.dart' as _i5;
import 'package:flutter/material.dart' as _i4;
import 'package:guten_book/features/book_detail/pages/book_detail_page.dart'
    as _i1;
import 'package:guten_book/features/main/pages/main_page.dart' as _i2;

/// generated route for
/// [_i1.BookDetailPage]
class BookDetailRoute extends _i3.PageRouteInfo<BookDetailRouteArgs> {
  BookDetailRoute({
    _i4.Key? key,
    required List<_i5.BookEntity> books,
    required int initialIndex,
    List<_i3.PageRouteInfo>? children,
  }) : super(
         BookDetailRoute.name,
         args: BookDetailRouteArgs(
           key: key,
           books: books,
           initialIndex: initialIndex,
         ),
         initialChildren: children,
       );

  static const String name = 'BookDetailRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BookDetailRouteArgs>();
      return _i1.BookDetailPage(
        key: args.key,
        books: args.books,
        initialIndex: args.initialIndex,
      );
    },
  );
}

class BookDetailRouteArgs {
  const BookDetailRouteArgs({
    this.key,
    required this.books,
    required this.initialIndex,
  });

  final _i4.Key? key;

  final List<_i5.BookEntity> books;

  final int initialIndex;

  @override
  String toString() {
    return 'BookDetailRouteArgs{key: $key, books: $books, initialIndex: $initialIndex}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BookDetailRouteArgs) return false;
    return key == other.key &&
        const _i6.ListEquality().equals(books, other.books) &&
        initialIndex == other.initialIndex;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      const _i6.ListEquality().hash(books) ^
      initialIndex.hashCode;
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i3.PageRouteInfo<void> {
  const MainRoute({List<_i3.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.MainPage();
    },
  );
}
