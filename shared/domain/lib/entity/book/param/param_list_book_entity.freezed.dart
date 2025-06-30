// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'param_list_book_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParamListBookEntity {

 int get page; String? get search;
/// Create a copy of ParamListBookEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParamListBookEntityCopyWith<ParamListBookEntity> get copyWith => _$ParamListBookEntityCopyWithImpl<ParamListBookEntity>(this as ParamListBookEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParamListBookEntity&&(identical(other.page, page) || other.page == page)&&(identical(other.search, search) || other.search == search));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,search);

@override
String toString() {
  return 'ParamListBookEntity(page: $page, search: $search)';
}


}

/// @nodoc
abstract mixin class $ParamListBookEntityCopyWith<$Res>  {
  factory $ParamListBookEntityCopyWith(ParamListBookEntity value, $Res Function(ParamListBookEntity) _then) = _$ParamListBookEntityCopyWithImpl;
@useResult
$Res call({
 int page, String? search
});




}
/// @nodoc
class _$ParamListBookEntityCopyWithImpl<$Res>
    implements $ParamListBookEntityCopyWith<$Res> {
  _$ParamListBookEntityCopyWithImpl(this._self, this._then);

  final ParamListBookEntity _self;
  final $Res Function(ParamListBookEntity) _then;

/// Create a copy of ParamListBookEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? search = freezed,}) {
  return _then(ParamListBookEntity(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


// dart format on
