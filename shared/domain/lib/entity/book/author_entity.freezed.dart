// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthorEntity {

 String get name; int? get birthYear; int? get deathYear;
/// Create a copy of AuthorEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorEntityCopyWith<AuthorEntity> get copyWith => _$AuthorEntityCopyWithImpl<AuthorEntity>(this as AuthorEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.birthYear, birthYear) || other.birthYear == birthYear)&&(identical(other.deathYear, deathYear) || other.deathYear == deathYear));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,birthYear,deathYear);

@override
String toString() {
  return 'AuthorEntity(name: $name, birthYear: $birthYear, deathYear: $deathYear)';
}


}

/// @nodoc
abstract mixin class $AuthorEntityCopyWith<$Res>  {
  factory $AuthorEntityCopyWith(AuthorEntity value, $Res Function(AuthorEntity) _then) = _$AuthorEntityCopyWithImpl;
@useResult
$Res call({
 String name, int? birthYear, int? deathYear
});




}
/// @nodoc
class _$AuthorEntityCopyWithImpl<$Res>
    implements $AuthorEntityCopyWith<$Res> {
  _$AuthorEntityCopyWithImpl(this._self, this._then);

  final AuthorEntity _self;
  final $Res Function(AuthorEntity) _then;

/// Create a copy of AuthorEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? birthYear = freezed,Object? deathYear = freezed,}) {
  return _then(AuthorEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,birthYear: freezed == birthYear ? _self.birthYear : birthYear // ignore: cast_nullable_to_non_nullable
as int?,deathYear: freezed == deathYear ? _self.deathYear : deathYear // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


// dart format on
