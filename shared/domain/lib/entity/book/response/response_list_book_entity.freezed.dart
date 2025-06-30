// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_list_book_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseListBookEntity {

 int get count; String? get next; String? get previous; List<BookEntity> get results;
/// Create a copy of ResponseListBookEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseListBookEntityCopyWith<ResponseListBookEntity> get copyWith => _$ResponseListBookEntityCopyWithImpl<ResponseListBookEntity>(this as ResponseListBookEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseListBookEntity&&(identical(other.count, count) || other.count == count)&&(identical(other.next, next) || other.next == next)&&(identical(other.previous, previous) || other.previous == previous)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,next,previous,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'ResponseListBookEntity(count: $count, next: $next, previous: $previous, results: $results)';
}


}

/// @nodoc
abstract mixin class $ResponseListBookEntityCopyWith<$Res>  {
  factory $ResponseListBookEntityCopyWith(ResponseListBookEntity value, $Res Function(ResponseListBookEntity) _then) = _$ResponseListBookEntityCopyWithImpl;
@useResult
$Res call({
 int count, String? next, String? previous, List<BookEntity> results
});




}
/// @nodoc
class _$ResponseListBookEntityCopyWithImpl<$Res>
    implements $ResponseListBookEntityCopyWith<$Res> {
  _$ResponseListBookEntityCopyWithImpl(this._self, this._then);

  final ResponseListBookEntity _self;
  final $Res Function(ResponseListBookEntity) _then;

/// Create a copy of ResponseListBookEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? next = freezed,Object? previous = freezed,Object? results = null,}) {
  return _then(ResponseListBookEntity(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,previous: freezed == previous ? _self.previous : previous // ignore: cast_nullable_to_non_nullable
as String?,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<BookEntity>,
  ));
}

}


// dart format on
