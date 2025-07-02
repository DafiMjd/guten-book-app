// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookDetailState {

 ViewData<void> get updateBookIdState; ViewData<void> get getBookIdsState;// It is used to determine which books are marked as saved in the UI and for related logic.
 List<int> get bookIds;// used to show list of books in book detail page
 List<BookEntity> get books;// int = id, bool = isSaved
 Map<int, bool> get bookMap;
/// Create a copy of BookDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookDetailStateCopyWith<BookDetailState> get copyWith => _$BookDetailStateCopyWithImpl<BookDetailState>(this as BookDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookDetailState&&(identical(other.updateBookIdState, updateBookIdState) || other.updateBookIdState == updateBookIdState)&&(identical(other.getBookIdsState, getBookIdsState) || other.getBookIdsState == getBookIdsState)&&const DeepCollectionEquality().equals(other.bookIds, bookIds)&&const DeepCollectionEquality().equals(other.books, books)&&const DeepCollectionEquality().equals(other.bookMap, bookMap));
}


@override
int get hashCode => Object.hash(runtimeType,updateBookIdState,getBookIdsState,const DeepCollectionEquality().hash(bookIds),const DeepCollectionEquality().hash(books),const DeepCollectionEquality().hash(bookMap));

@override
String toString() {
  return 'BookDetailState(updateBookIdState: $updateBookIdState, getBookIdsState: $getBookIdsState, bookIds: $bookIds, books: $books, bookMap: $bookMap)';
}


}

/// @nodoc
abstract mixin class $BookDetailStateCopyWith<$Res>  {
  factory $BookDetailStateCopyWith(BookDetailState value, $Res Function(BookDetailState) _then) = _$BookDetailStateCopyWithImpl;
@useResult
$Res call({
 ViewData<void> updateBookIdState, ViewData<void> getBookIdsState, List<int> bookIds, List<BookEntity> books, Map<int, bool> bookMap
});


$ViewDataCopyWith<void, $Res> get updateBookIdState;$ViewDataCopyWith<void, $Res> get getBookIdsState;

}
/// @nodoc
class _$BookDetailStateCopyWithImpl<$Res>
    implements $BookDetailStateCopyWith<$Res> {
  _$BookDetailStateCopyWithImpl(this._self, this._then);

  final BookDetailState _self;
  final $Res Function(BookDetailState) _then;

/// Create a copy of BookDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? updateBookIdState = null,Object? getBookIdsState = null,Object? bookIds = null,Object? books = null,Object? bookMap = null,}) {
  return _then(_self.copyWith(
updateBookIdState: null == updateBookIdState ? _self.updateBookIdState : updateBookIdState // ignore: cast_nullable_to_non_nullable
as ViewData<void>,getBookIdsState: null == getBookIdsState ? _self.getBookIdsState : getBookIdsState // ignore: cast_nullable_to_non_nullable
as ViewData<void>,bookIds: null == bookIds ? _self.bookIds : bookIds // ignore: cast_nullable_to_non_nullable
as List<int>,books: null == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as List<BookEntity>,bookMap: null == bookMap ? _self.bookMap : bookMap // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,
  ));
}
/// Create a copy of BookDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewDataCopyWith<void, $Res> get updateBookIdState {
  
  return $ViewDataCopyWith<void, $Res>(_self.updateBookIdState, (value) {
    return _then(_self.copyWith(updateBookIdState: value));
  });
}/// Create a copy of BookDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewDataCopyWith<void, $Res> get getBookIdsState {
  
  return $ViewDataCopyWith<void, $Res>(_self.getBookIdsState, (value) {
    return _then(_self.copyWith(getBookIdsState: value));
  });
}
}


/// @nodoc


class _BookDetailState implements BookDetailState {
  const _BookDetailState({required this.updateBookIdState, required this.getBookIdsState, required final  List<int> bookIds, required final  List<BookEntity> books, required final  Map<int, bool> bookMap}): _bookIds = bookIds,_books = books,_bookMap = bookMap;
  

@override final  ViewData<void> updateBookIdState;
@override final  ViewData<void> getBookIdsState;
// It is used to determine which books are marked as saved in the UI and for related logic.
 final  List<int> _bookIds;
// It is used to determine which books are marked as saved in the UI and for related logic.
@override List<int> get bookIds {
  if (_bookIds is EqualUnmodifiableListView) return _bookIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bookIds);
}

// used to show list of books in book detail page
 final  List<BookEntity> _books;
// used to show list of books in book detail page
@override List<BookEntity> get books {
  if (_books is EqualUnmodifiableListView) return _books;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_books);
}

// int = id, bool = isSaved
 final  Map<int, bool> _bookMap;
// int = id, bool = isSaved
@override Map<int, bool> get bookMap {
  if (_bookMap is EqualUnmodifiableMapView) return _bookMap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_bookMap);
}


/// Create a copy of BookDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookDetailStateCopyWith<_BookDetailState> get copyWith => __$BookDetailStateCopyWithImpl<_BookDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookDetailState&&(identical(other.updateBookIdState, updateBookIdState) || other.updateBookIdState == updateBookIdState)&&(identical(other.getBookIdsState, getBookIdsState) || other.getBookIdsState == getBookIdsState)&&const DeepCollectionEquality().equals(other._bookIds, _bookIds)&&const DeepCollectionEquality().equals(other._books, _books)&&const DeepCollectionEquality().equals(other._bookMap, _bookMap));
}


@override
int get hashCode => Object.hash(runtimeType,updateBookIdState,getBookIdsState,const DeepCollectionEquality().hash(_bookIds),const DeepCollectionEquality().hash(_books),const DeepCollectionEquality().hash(_bookMap));

@override
String toString() {
  return 'BookDetailState(updateBookIdState: $updateBookIdState, getBookIdsState: $getBookIdsState, bookIds: $bookIds, books: $books, bookMap: $bookMap)';
}


}

/// @nodoc
abstract mixin class _$BookDetailStateCopyWith<$Res> implements $BookDetailStateCopyWith<$Res> {
  factory _$BookDetailStateCopyWith(_BookDetailState value, $Res Function(_BookDetailState) _then) = __$BookDetailStateCopyWithImpl;
@override @useResult
$Res call({
 ViewData<void> updateBookIdState, ViewData<void> getBookIdsState, List<int> bookIds, List<BookEntity> books, Map<int, bool> bookMap
});


@override $ViewDataCopyWith<void, $Res> get updateBookIdState;@override $ViewDataCopyWith<void, $Res> get getBookIdsState;

}
/// @nodoc
class __$BookDetailStateCopyWithImpl<$Res>
    implements _$BookDetailStateCopyWith<$Res> {
  __$BookDetailStateCopyWithImpl(this._self, this._then);

  final _BookDetailState _self;
  final $Res Function(_BookDetailState) _then;

/// Create a copy of BookDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? updateBookIdState = null,Object? getBookIdsState = null,Object? bookIds = null,Object? books = null,Object? bookMap = null,}) {
  return _then(_BookDetailState(
updateBookIdState: null == updateBookIdState ? _self.updateBookIdState : updateBookIdState // ignore: cast_nullable_to_non_nullable
as ViewData<void>,getBookIdsState: null == getBookIdsState ? _self.getBookIdsState : getBookIdsState // ignore: cast_nullable_to_non_nullable
as ViewData<void>,bookIds: null == bookIds ? _self._bookIds : bookIds // ignore: cast_nullable_to_non_nullable
as List<int>,books: null == books ? _self._books : books // ignore: cast_nullable_to_non_nullable
as List<BookEntity>,bookMap: null == bookMap ? _self._bookMap : bookMap // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,
  ));
}

/// Create a copy of BookDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewDataCopyWith<void, $Res> get updateBookIdState {
  
  return $ViewDataCopyWith<void, $Res>(_self.updateBookIdState, (value) {
    return _then(_self.copyWith(updateBookIdState: value));
  });
}/// Create a copy of BookDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewDataCopyWith<void, $Res> get getBookIdsState {
  
  return $ViewDataCopyWith<void, $Res>(_self.getBookIdsState, (value) {
    return _then(_self.copyWith(getBookIdsState: value));
  });
}
}

// dart format on
