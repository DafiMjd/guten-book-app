// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookEntity _$BookEntityFromJson(Map<String, dynamic> json) => BookEntity(
  id: (json['id'] as num?)?.toInt() ?? 0,
  title: json['title'] as String? ?? '',
  authors:
      (json['authors'] as List<dynamic>?)
          ?.map((e) => AuthorEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  summaries:
      (json['summaries'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  translators:
      (json['translators'] as List<dynamic>?)
          ?.map((e) => AuthorEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  subjects:
      (json['subjects'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  bookshelves:
      (json['bookshelves'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  languages:
      (json['languages'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  copyright: json['copyright'] as bool? ?? false,
  mediaType: json['media_type'] as String? ?? '',
  downloadCount: (json['download_count'] as num?)?.toInt() ?? 0,
  formats: FormatsEntity.fromJson(json['formats'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BookEntityToJson(BookEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'authors': instance.authors,
      'summaries': instance.summaries,
      'translators': instance.translators,
      'subjects': instance.subjects,
      'bookshelves': instance.bookshelves,
      'languages': instance.languages,
      'copyright': instance.copyright,
      'media_type': instance.mediaType,
      'download_count': instance.downloadCount,
      'formats': instance.formats,
    };
