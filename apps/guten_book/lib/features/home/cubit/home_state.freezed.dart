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

 LoadState<void> get booksLoadState; List<BookEntityGrid> get books; ParamListBookEntity get params; bool get isAllLoaded;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.booksLoadState, booksLoadState) || other.booksLoadState == booksLoadState)&&const DeepCollectionEquality().equals(other.books, books)&&(identical(other.params, params) || other.params == params)&&(identical(other.isAllLoaded, isAllLoaded) || other.isAllLoaded == isAllLoaded));
}


@override
int get hashCode => Object.hash(runtimeType,booksLoadState,const DeepCollectionEquality().hash(books),params,isAllLoaded);

@override
String toString() {
  return 'HomeState(booksLoadState: $booksLoadState, books: $books, params: $params, isAllLoaded: $isAllLoaded)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 LoadState<void> booksLoadState, List<BookEntityGrid> books, ParamListBookEntity params, bool isAllLoaded
});


$LoadStateCopyWith<void, $Res> get booksLoadState;$ParamListBookEntityCopyWith<$Res> get params;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? booksLoadState = null,Object? books = null,Object? params = null,Object? isAllLoaded = null,}) {
  return _then(_self.copyWith(
booksLoadState: null == booksLoadState ? _self.booksLoadState : booksLoadState // ignore: cast_nullable_to_non_nullable
as LoadState<void>,books: null == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as List<BookEntityGrid>,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ParamListBookEntity,isAllLoaded: null == isAllLoaded ? _self.isAllLoaded : isAllLoaded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadStateCopyWith<void, $Res> get booksLoadState {
  
  return $LoadStateCopyWith<void, $Res>(_self.booksLoadState, (value) {
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
  const _HomeState({required this.booksLoadState, required final  List<BookEntityGrid> books, required this.params, required this.isAllLoaded}): _books = books;
  

@override final  LoadState<void> booksLoadState;
 final  List<BookEntityGrid> _books;
@override List<BookEntityGrid> get books {
  if (_books is EqualUnmodifiableListView) return _books;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_books);
}

@override final  ParamListBookEntity params;
@override final  bool isAllLoaded;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.booksLoadState, booksLoadState) || other.booksLoadState == booksLoadState)&&const DeepCollectionEquality().equals(other._books, _books)&&(identical(other.params, params) || other.params == params)&&(identical(other.isAllLoaded, isAllLoaded) || other.isAllLoaded == isAllLoaded));
}


@override
int get hashCode => Object.hash(runtimeType,booksLoadState,const DeepCollectionEquality().hash(_books),params,isAllLoaded);

@override
String toString() {
  return 'HomeState(booksLoadState: $booksLoadState, books: $books, params: $params, isAllLoaded: $isAllLoaded)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 LoadState<void> booksLoadState, List<BookEntityGrid> books, ParamListBookEntity params, bool isAllLoaded
});


@override $LoadStateCopyWith<void, $Res> get booksLoadState;@override $ParamListBookEntityCopyWith<$Res> get params;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? booksLoadState = null,Object? books = null,Object? params = null,Object? isAllLoaded = null,}) {
  return _then(_HomeState(
booksLoadState: null == booksLoadState ? _self.booksLoadState : booksLoadState // ignore: cast_nullable_to_non_nullable
as LoadState<void>,books: null == books ? _self._books : books // ignore: cast_nullable_to_non_nullable
as List<BookEntityGrid>,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ParamListBookEntity,isAllLoaded: null == isAllLoaded ? _self.isAllLoaded : isAllLoaded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadStateCopyWith<void, $Res> get booksLoadState {
  
  return $LoadStateCopyWith<void, $Res>(_self.booksLoadState, (value) {
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
