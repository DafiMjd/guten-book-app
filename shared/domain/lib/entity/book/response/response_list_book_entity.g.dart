// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_list_book_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseListBookEntity _$ResponseListBookEntityFromJson(
  Map<String, dynamic> json,
) => ResponseListBookEntity(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>)
      .map((e) => BookEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ResponseListBookEntityToJson(
  ResponseListBookEntity instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
