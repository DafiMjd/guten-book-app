// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_book_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseBookEntity {

 int get count; String? get next; String? get previous; List<BookEntity> get results;
/// Create a copy of ResponseBookEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseBookEntityCopyWith<ResponseBookEntity> get copyWith => _$ResponseBookEntityCopyWithImpl<ResponseBookEntity>(this as ResponseBookEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseBookEntity&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,next,previous,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'ResponseBookEntity(count: $count, next: $next, previous: $previous, results: $results)';
}


}

/// @nodoc
abstract mixin class $ResponseBookEntityCopyWith<$Res>  {
  factory $ResponseBookEntityCopyWith(ResponseBookEntity value, $Res Function(ResponseBookEntity) _then) = _$ResponseBookEntityCopyWithImpl;
@useResult
$Res call({
 int count, String? next, String? previous, List<BookEntity> results
});




}
/// @nodoc
class _$ResponseBookEntityCopyWithImpl<$Res>
    implements $ResponseBookEntityCopyWith<$Res> {
  _$ResponseBookEntityCopyWithImpl(this._self, this._then);

  final ResponseBookEntity _self;
  final $Res Function(ResponseBookEntity) _then;

/// Create a copy of ResponseBookEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? next = freezed,Object? previous = freezed,Object? results = null,}) {
  return _then(ResponseBookEntity(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<BookEntity>,
  ));
}

}


// dart format on
