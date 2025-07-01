// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ViewData<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewData<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ViewData<$T>()';
}


}

/// @nodoc
class $ViewDataCopyWith<T,$Res>  {
$ViewDataCopyWith(ViewData<T> _, $Res Function(ViewData<T>) __);
}


/// @nodoc


class Initial<T> extends ViewData<T> {
  const Initial(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ViewData<$T>.initial()';
}


}




/// @nodoc


class Errror<T> extends ViewData<T> {
  const Errror({required this.exception}): super._();
  

 final  BaseException exception;

/// Create a copy of ViewData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrrorCopyWith<T, Errror<T>> get copyWith => _$ErrrorCopyWithImpl<T, Errror<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Errror<T>&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,exception);

@override
String toString() {
  return 'ViewData<$T>.error(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $ErrrorCopyWith<T,$Res> implements $ViewDataCopyWith<T, $Res> {
  factory $ErrrorCopyWith(Errror<T> value, $Res Function(Errror<T>) _then) = _$ErrrorCopyWithImpl;
@useResult
$Res call({
 BaseException exception
});




}
/// @nodoc
class _$ErrrorCopyWithImpl<T,$Res>
    implements $ErrrorCopyWith<T, $Res> {
  _$ErrrorCopyWithImpl(this._self, this._then);

  final Errror<T> _self;
  final $Res Function(Errror<T>) _then;

/// Create a copy of ViewData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(Errror<T>(
exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as BaseException,
  ));
}


}

/// @nodoc


class Loading<T> extends ViewData<T> {
  const Loading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ViewData<$T>.loading()';
}


}




/// @nodoc


class Loaded<T> extends ViewData<T> {
  const Loaded({required this.data}): super._();
  

 final  T data;

/// Create a copy of ViewData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<T, Loaded<T>> get copyWith => _$LoadedCopyWithImpl<T, Loaded<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ViewData<$T>.loaded(data: $data)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<T,$Res> implements $ViewDataCopyWith<T, $Res> {
  factory $LoadedCopyWith(Loaded<T> value, $Res Function(Loaded<T>) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$LoadedCopyWithImpl<T,$Res>
    implements $LoadedCopyWith<T, $Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded<T> _self;
  final $Res Function(Loaded<T>) _then;

/// Create a copy of ViewData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(Loaded<T>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

// dart format on
