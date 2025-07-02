import 'package:freezed_annotation/freezed_annotation.dart';

part 'param_list_book_entity.freezed.dart';

@freezed
@JsonSerializable(includeIfNull: false)
class ParamListBookEntity with _$ParamListBookEntity {
  const ParamListBookEntity({
    required this.page,
    this.search,
    this.sort,
    this.ids,
  });

  @override
  final int page;
  @override
  final String? search;
  @override
  final String? sort;
  @override
  final List<int>? ids;

  Map<String, Object?> toJson() => {
    'page': page,
    if (search != null) 'search': search,
    if (sort != null) 'sort': sort,
    if (ids != null) 'ids': ids?.join(','),
  };

  ParamListBookEntity get nextPage => copyWith(page: page + 1);
}
