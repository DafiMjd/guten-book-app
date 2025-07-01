// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorEntity _$AuthorEntityFromJson(Map<String, dynamic> json) => AuthorEntity(
  name: json['name'] as String? ?? '',
  birthYear: (json['birth_year'] as num?)?.toInt(),
  deathYear: (json['death_year'] as num?)?.toInt(),
);

Map<String, dynamic> _$AuthorEntityToJson(AuthorEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birth_year': instance.birthYear,
      'death_year': instance.deathYear,
    };
