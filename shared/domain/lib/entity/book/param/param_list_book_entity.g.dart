// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'param_list_book_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParamListBookEntity _$ParamListBookEntityFromJson(Map<String, dynamic> json) =>
    ParamListBookEntity(
      page: (json['page'] as num).toInt(),
      search: json['search'] as String?,
    );

Map<String, dynamic> _$ParamListBookEntityToJson(
  ParamListBookEntity instance,
) => <String, dynamic>{
  'page': instance.page,
  if (instance.search case final value?) 'search': value,
};
