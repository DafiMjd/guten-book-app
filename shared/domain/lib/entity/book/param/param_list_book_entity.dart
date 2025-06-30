import 'package:freezed_annotation/freezed_annotation.dart';

part 'param_list_book_entity.freezed.dart';
part 'param_list_book_entity.g.dart';

@freezed
@JsonSerializable()
class ParamListBookEntity with _$ParamListBookEntity {
  const ParamListBookEntity({
    required this.page,
    this.search,
  });

  @override
  final int page;
  @override
  final String? search;

  factory ParamListBookEntity.fromJson(Map<String, Object?> json) =>
      _$ParamListBookEntityFromJson(json);

  Map<String, Object?> toJson() => _$ParamListBookEntityToJson(this);

  ParamListBookEntity get nextPage => copyWith(page: page + 1);
}
