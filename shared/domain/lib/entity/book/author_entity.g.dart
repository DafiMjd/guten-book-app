// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorEntity _$AuthorEntityFromJson(Map<String, dynamic> json) => AuthorEntity(
  name: json['name'] as String,
  birthYear: (json['birthYear'] as num).toInt(),
  deathYear: (json['deathYear'] as num).toInt(),
);

Map<String, dynamic> _$AuthorEntityToJson(AuthorEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birthYear': instance.birthYear,
      'deathYear': instance.deathYear,
    };
