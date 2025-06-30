// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookEntity _$BookEntityFromJson(Map<String, dynamic> json) => BookEntity(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  authors:
      (json['authors'] as List<dynamic>)
          .map((e) => AuthorEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
  summaries:
      (json['summaries'] as List<dynamic>).map((e) => e as String).toList(),
  translators: json['translators'] as List<dynamic>,
  subjects:
      (json['subjects'] as List<dynamic>).map((e) => e as String).toList(),
  bookshelves:
      (json['bookshelves'] as List<dynamic>).map((e) => e as String).toList(),
  languages:
      (json['languages'] as List<dynamic>).map((e) => e as String).toList(),
  copyright: json['copyright'] as bool,
  mediaType: json['mediaType'] as String,
  downloadCount: (json['downloadCount'] as num).toInt(),
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
      'mediaType': instance.mediaType,
      'downloadCount': instance.downloadCount,
    };
