// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 ViewData<void> get booksLoadState; List<BookEntityGrid> get booksGrid; List<BookEntity> get books; ParamListBookEntity get params; bool get isAllLoaded; SortEnum get sort;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.booksLoadState, booksLoadState) || other.booksLoadState == booksLoadState)&&const DeepCollectionEquality().equals(other.booksGrid, booksGrid)&&const DeepCollectionEquality().equals(other.books, books)&&(identical(other.params, params) || other.params == params)&&(identical(other.isAllLoaded, isAllLoaded) || other.isAllLoaded == isAllLoaded)&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode => Object.hash(runtimeType,booksLoadState,const DeepCollectionEquality().hash(booksGrid),const DeepCollectionEquality().hash(books),params,isAllLoaded,sort);

@override
String toString() {
  return 'HomeState(booksLoadState: $booksLoadState, booksGrid: $booksGrid, books: $books, params: $params, isAllLoaded: $isAllLoaded, sort: $sort)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 ViewData<void> booksLoadState, List<BookEntityGrid> booksGrid, List<BookEntity> books, ParamListBookEntity params, bool isAllLoaded, SortEnum sort
});


$ViewDataCopyWith<void, $Res> get booksLoadState;$ParamListBookEntityCopyWith<$Res> get params;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? booksLoadState = null,Object? booksGrid = null,Object? books = null,Object? params = null,Object? isAllLoaded = null,Object? sort = null,}) {
  return _then(_self.copyWith(
booksLoadState: null == booksLoadState ? _self.booksLoadState : booksLoadState // ignore: cast_nullable_to_non_nullable
as ViewData<void>,booksGrid: null == booksGrid ? _self.booksGrid : booksGrid // ignore: cast_nullable_to_non_nullable
as List<BookEntityGrid>,books: null == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as List<BookEntity>,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ParamListBookEntity,isAllLoaded: null == isAllLoaded ? _self.isAllLoaded : isAllLoaded // ignore: cast_nullable_to_non_nullable
as bool,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as SortEnum,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewDataCopyWith<void, $Res> get booksLoadState {
  
  return $ViewDataCopyWith<void, $Res>(_self.booksLoadState, (value) {
    return _then(_self.copyWith(booksLoadState: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParamListBookEntityCopyWith<$Res> get params {
  
  return $ParamListBookEntityCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}


/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({required this.booksLoadState, required final  List<BookEntityGrid> booksGrid, required final  List<BookEntity> books, required this.params, required this.isAllLoaded, required this.sort}): _booksGrid = booksGrid,_books = books;
  

@override final  ViewData<void> booksLoadState;
 final  List<BookEntityGrid> _booksGrid;
@override List<BookEntityGrid> get booksGrid {
  if (_booksGrid is EqualUnmodifiableListView) return _booksGrid;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_booksGrid);
}

 final  List<BookEntity> _books;
@override List<BookEntity> get books {
  if (_books is EqualUnmodifiableListView) return _books;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_books);
}

@override final  ParamListBookEntity params;
@override final  bool isAllLoaded;
@override final  SortEnum sort;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.booksLoadState, booksLoadState) || other.booksLoadState == booksLoadState)&&const DeepCollectionEquality().equals(other._booksGrid, _booksGrid)&&const DeepCollectionEquality().equals(other._books, _books)&&(identical(other.params, params) || other.params == params)&&(identical(other.isAllLoaded, isAllLoaded) || other.isAllLoaded == isAllLoaded)&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode => Object.hash(runtimeType,booksLoadState,const DeepCollectionEquality().hash(_booksGrid),const DeepCollectionEquality().hash(_books),params,isAllLoaded,sort);

@override
String toString() {
  return 'HomeState(booksLoadState: $booksLoadState, booksGrid: $booksGrid, books: $books, params: $params, isAllLoaded: $isAllLoaded, sort: $sort)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 ViewData<void> booksLoadState, List<BookEntityGrid> booksGrid, List<BookEntity> books, ParamListBookEntity params, bool isAllLoaded, SortEnum sort
});


@override $ViewDataCopyWith<void, $Res> get booksLoadState;@override $ParamListBookEntityCopyWith<$Res> get params;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? booksLoadState = null,Object? booksGrid = null,Object? books = null,Object? params = null,Object? isAllLoaded = null,Object? sort = null,}) {
  return _then(_HomeState(
booksLoadState: null == booksLoadState ? _self.booksLoadState : booksLoadState // ignore: cast_nullable_to_non_nullable
as ViewData<void>,booksGrid: null == booksGrid ? _self._booksGrid : booksGrid // ignore: cast_nullable_to_non_nullable
as List<BookEntityGrid>,books: null == books ? _self._books : books // ignore: cast_nullable_to_non_nullable
as List<BookEntity>,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ParamListBookEntity,isAllLoaded: null == isAllLoaded ? _self.isAllLoaded : isAllLoaded // ignore: cast_nullable_to_non_nullable
as bool,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as SortEnum,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewDataCopyWith<void, $Res> get booksLoadState {
  
  return $ViewDataCopyWith<void, $Res>(_self.booksLoadState, (value) {
    return _then(_self.copyWith(booksLoadState: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParamListBookEntityCopyWith<$Res> get params {
  
  return $ParamListBookEntityCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

// dart format on
