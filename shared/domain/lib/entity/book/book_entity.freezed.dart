// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookEntity {

 int get id; String get title; List<AuthorEntity> get authors; List<String> get summaries; List<AuthorEntity> get translators; List<String> get subjects; List<String> get bookshelves; List<String> get languages; bool get copyright; String get mediaType; int get downloadCount; FormatsEntity get formats;
/// Create a copy of BookEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookEntityCopyWith<BookEntity> get copyWith => _$BookEntityCopyWithImpl<BookEntity>(this as BookEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.authors, authors)&&const DeepCollectionEquality().equals(other.summaries, summaries)&&const DeepCollectionEquality().equals(other.translators, translators)&&const DeepCollectionEquality().equals(other.subjects, subjects)&&const DeepCollectionEquality().equals(other.bookshelves, bookshelves)&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.copyright, copyright) || other.copyright == copyright)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType)&&(identical(other.downloadCount, downloadCount) || other.downloadCount == downloadCount)&&(identical(other.formats, formats) || other.formats == formats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(authors),const DeepCollectionEquality().hash(summaries),const DeepCollectionEquality().hash(translators),const DeepCollectionEquality().hash(subjects),const DeepCollectionEquality().hash(bookshelves),const DeepCollectionEquality().hash(languages),copyright,mediaType,downloadCount,formats);

@override
String toString() {
  return 'BookEntity(id: $id, title: $title, authors: $authors, summaries: $summaries, translators: $translators, subjects: $subjects, bookshelves: $bookshelves, languages: $languages, copyright: $copyright, mediaType: $mediaType, downloadCount: $downloadCount, formats: $formats)';
}


}

/// @nodoc
abstract mixin class $BookEntityCopyWith<$Res>  {
  factory $BookEntityCopyWith(BookEntity value, $Res Function(BookEntity) _then) = _$BookEntityCopyWithImpl;
@useResult
$Res call({
 int id, String title, List<AuthorEntity> authors, List<String> summaries, List<AuthorEntity> translators, List<String> subjects, List<String> bookshelves, List<String> languages, bool copyright, String mediaType, int downloadCount, FormatsEntity formats
});




}
/// @nodoc
class _$BookEntityCopyWithImpl<$Res>
    implements $BookEntityCopyWith<$Res> {
  _$BookEntityCopyWithImpl(this._self, this._then);

  final BookEntity _self;
  final $Res Function(BookEntity) _then;

/// Create a copy of BookEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? authors = null,Object? summaries = null,Object? translators = null,Object? subjects = null,Object? bookshelves = null,Object? languages = null,Object? copyright = null,Object? mediaType = null,Object? downloadCount = null,Object? formats = null,}) {
  return _then(BookEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,authors: null == authors ? _self.authors : authors // ignore: cast_nullable_to_non_nullable
as List<AuthorEntity>,summaries: null == summaries ? _self.summaries : summaries // ignore: cast_nullable_to_non_nullable
as List<String>,translators: null == translators ? _self.translators : translators // ignore: cast_nullable_to_non_nullable
as List<AuthorEntity>,subjects: null == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<String>,bookshelves: null == bookshelves ? _self.bookshelves : bookshelves // ignore: cast_nullable_to_non_nullable
as List<String>,languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<String>,copyright: null == copyright ? _self.copyright : copyright // ignore: cast_nullable_to_non_nullable
as bool,mediaType: null == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as String,downloadCount: null == downloadCount ? _self.downloadCount : downloadCount // ignore: cast_nullable_to_non_nullable
as int,formats: null == formats ? _self.formats : formats // ignore: cast_nullable_to_non_nullable
as FormatsEntity,
  ));
}

}


// dart format on
