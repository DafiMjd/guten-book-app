// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'liked_book_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LikedBookState {

 ViewData<void> get booksLoadState; ViewData<List<int>> get savedBookIdsState; Map<BookEntity, bool> get booksMap; ParamListBookEntity get params; bool get isAllLoaded; ViewData<void> get updateBookIdState;
/// Create a copy of LikedBookState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikedBookStateCopyWith<LikedBookState> get copyWith => _$LikedBookStateCopyWithImpl<LikedBookState>(this as LikedBookState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikedBookState&&(identical(other.booksLoadState, booksLoadState) || other.booksLoadState == booksLoadState)&&(identical(other.savedBookIdsState, savedBookIdsState) || other.savedBookIdsState == savedBookIdsState)&&const DeepCollectionEquality().equals(other.booksMap, booksMap)&&(identical(other.params, params) || other.params == params)&&(identical(other.isAllLoaded, isAllLoaded) || other.isAllLoaded == isAllLoaded)&&(identical(other.updateBookIdState, updateBookIdState) || other.updateBookIdState == updateBookIdState));
}


@override
int get hashCode => Object.hash(runtimeType,booksLoadState,savedBookIdsState,const DeepCollectionEquality().hash(booksMap),params,isAllLoaded,updateBookIdState);

@override
String toString() {
  return 'LikedBookState(booksLoadState: $booksLoadState, savedBookIdsState: $savedBookIdsState, booksMap: $booksMap, params: $params, isAllLoaded: $isAllLoaded, updateBookIdState: $updateBookIdState)';
}


}

/// @nodoc
abstract mixin class $LikedBookStateCopyWith<$Res>  {
  factory $LikedBookStateCopyWith(LikedBookState value, $Res Function(LikedBookState) _then) = _$LikedBookStateCopyWithImpl;
@useResult
$Res call({
 ViewData<void> booksLoadState, ViewData<List<int>> savedBookIdsState, Map<BookEntity, bool> booksMap, ParamListBookEntity params, bool isAllLoaded, ViewData<void> updateBookIdState
});


$ViewDataCopyWith<void, $Res> get booksLoadState;$ViewDataCopyWith<List<int>, $Res> get savedBookIdsState;$ParamListBookEntityCopyWith<$Res> get params;$ViewDataCopyWith<void, $Res> get updateBookIdState;

}
/// @nodoc
class _$LikedBookStateCopyWithImpl<$Res>
    implements $LikedBookStateCopyWith<$Res> {
  _$LikedBookStateCopyWithImpl(this._self, this._then);

  final LikedBookState _self;
  final $Res Function(LikedBookState) _then;

/// Create a copy of LikedBookState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? booksLoadState = null,Object? savedBookIdsState = null,Object? booksMap = null,Object? params = null,Object? isAllLoaded = null,Object? updateBookIdState = null,}) {
  return _then(_self.copyWith(
booksLoadState: null == booksLoadState ? _self.booksLoadState : booksLoadState // ignore: cast_nullable_to_non_nullable
as ViewData<void>,savedBookIdsState: null == savedBookIdsState ? _self.savedBookIdsState : savedBookIdsState // ignore: cast_nullable_to_non_nullable
as ViewData<List<int>>,booksMap: null == booksMap ? _self.booksMap : booksMap // ignore: cast_nullable_to_non_nullable
as Map<BookEntity, bool>,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ParamListBookEntity,isAllLoaded: null == isAllLoaded ? _self.isAllLoaded : isAllLoaded // ignore: cast_nullable_to_non_nullable
as bool,updateBookIdState: null == updateBookIdState ? _self.updateBookIdState : updateBookIdState // ignore: cast_nullable_to_non_nullable
as ViewData<void>,
  ));
}
/// Create a copy of LikedBookState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewDataCopyWith<void, $Res> get booksLoadState {
  
  return $ViewDataCopyWith<void, $Res>(_self.booksLoadState, (value) {
    return _then(_self.copyWith(booksLoadState: value));
  });
}/// Create a copy of LikedBookState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewDataCopyWith<List<int>, $Res> get savedBookIdsState {
  
  return $ViewDataCopyWith<List<int>, $Res>(_self.savedBookIdsState, (value) {
    return _then(_self.copyWith(savedBookIdsState: value));
  });
}/// Create a copy of LikedBookState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParamListBookEntityCopyWith<$Res> get params {
  
  return $ParamListBookEntityCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}/// Create a copy of LikedBookState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewDataCopyWith<void, $Res> get updateBookIdState {
  
  return $ViewDataCopyWith<void, $Res>(_self.updateBookIdState, (value) {
    return _then(_self.copyWith(updateBookIdState: value));
  });
}
}


/// @nodoc


class _LikedBookState extends LikedBookState {
  const _LikedBookState({required this.booksLoadState, required this.savedBookIdsState, required final  Map<BookEntity, bool> booksMap, required this.params, required this.isAllLoaded, required this.updateBookIdState}): _booksMap = booksMap,super._();
  

@override final  ViewData<void> booksLoadState;
@override final  ViewData<List<int>> savedBookIdsState;
 final  Map<BookEntity, bool> _booksMap;
@override Map<BookEntity, bool> get booksMap {
  if (_booksMap is EqualUnmodifiableMapView) return _booksMap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_booksMap);
}

@override final  ParamListBookEntity params;
@override final  bool isAllLoaded;
@override final  ViewData<void> updateBookIdState;

/// Create a copy of LikedBookState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LikedBookStateCopyWith<_LikedBookState> get copyWith => __$LikedBookStateCopyWithImpl<_LikedBookState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LikedBookState&&(identical(other.booksLoadState, booksLoadState) || other.booksLoadState == booksLoadState)&&(identical(other.savedBookIdsState, savedBookIdsState) || other.savedBookIdsState == savedBookIdsState)&&const DeepCollectionEquality().equals(other._booksMap, _booksMap)&&(identical(other.params, params) || other.params == params)&&(identical(other.isAllLoaded, isAllLoaded) || other.isAllLoaded == isAllLoaded)&&(identical(other.updateBookIdState, updateBookIdState) || other.updateBookIdState == updateBookIdState));
}


@override
int get hashCode => Object.hash(runtimeType,booksLoadState,savedBookIdsState,const DeepCollectionEquality().hash(_booksMap),params,isAllLoaded,updateBookIdState);

@override
String toString() {
  return 'LikedBookState(booksLoadState: $booksLoadState, savedBookIdsState: $savedBookIdsState, booksMap: $booksMap, params: $params, isAllLoaded: $isAllLoaded, updateBookIdState: $updateBookIdState)';
}


}

/// @nodoc
abstract mixin class _$LikedBookStateCopyWith<$Res> implements $LikedBookStateCopyWith<$Res> {
  factory _$LikedBookStateCopyWith(_LikedBookState value, $Res Function(_LikedBookState) _then) = __$LikedBookStateCopyWithImpl;
@override @useResult
$Res call({
 ViewData<void> booksLoadState, ViewData<List<int>> savedBookIdsState, Map<BookEntity, bool> booksMap, ParamListBookEntity params, bool isAllLoaded, ViewData<void> updateBookIdState
});


@override $ViewDataCopyWith<void, $Res> get booksLoadState;@override $ViewDataCopyWith<List<int>, $Res> get savedBookIdsState;@override $ParamListBookEntityCopyWith<$Res> get params;@override $ViewDataCopyWith<void, $Res> get updateBookIdState;

}
/// @nodoc
class __$LikedBookStateCopyWithImpl<$Res>
    implements _$LikedBookStateCopyWith<$Res> {
  __$LikedBookStateCopyWithImpl(this._self, this._then);

  final _LikedBookState _self;
  final $Res Function(_LikedBookState) _then;

/// Create a copy of LikedBookState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? booksLoadState = null,Object? savedBookIdsState = null,Object? booksMap = null,Object? params = null,Object? isAllLoaded = null,Object? updateBookIdState = null,}) {
  return _then(_LikedBookState(
booksLoadState: null == booksLoadState ? _self.booksLoadState : booksLoadState // ignore: cast_nullable_to_non_nullable
as ViewData<void>,savedBookIdsState: null == savedBookIdsState ? _self.savedBookIdsState : savedBookIdsState // ignore: cast_nullable_to_non_nullable
as ViewData<List<int>>,booksMap: null == booksMap ? _self._booksMap : booksMap // ignore: cast_nullable_to_non_nullable
as Map<BookEntity, bool>,params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ParamListBookEntity,isAllLoaded: null == isAllLoaded ? _self.isAllLoaded : isAllLoaded // ignore: cast_nullable_to_non_nullable
as bool,updateBookIdState: null == updateBookIdState ? _self.updateBookIdState : updateBookIdState // ignore: cast_nullable_to_non_nullable
as ViewData<void>,
  ));
}

/// Create a copy of LikedBookState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewDataCopyWith<void, $Res> get booksLoadState {
  
  return $ViewDataCopyWith<void, $Res>(_self.booksLoadState, (value) {
    return _then(_self.copyWith(booksLoadState: value));
  });
}/// Create a copy of LikedBookState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewDataCopyWith<List<int>, $Res> get savedBookIdsState {
  
  return $ViewDataCopyWith<List<int>, $Res>(_self.savedBookIdsState, (value) {
    return _then(_self.copyWith(savedBookIdsState: value));
  });
}/// Create a copy of LikedBookState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParamListBookEntityCopyWith<$Res> get params {
  
  return $ParamListBookEntityCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}/// Create a copy of LikedBookState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewDataCopyWith<void, $Res> get updateBookIdState {
  
  return $ViewDataCopyWith<void, $Res>(_self.updateBookIdState, (value) {
    return _then(_self.copyWith(updateBookIdState: value));
  });
}
}

// dart format on
