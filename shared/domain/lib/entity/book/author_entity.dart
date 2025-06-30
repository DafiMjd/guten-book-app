import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_entity.freezed.dart';
part 'author_entity.g.dart';

@freezed
@JsonSerializable(includeIfNull: true)
class AuthorEntity with _$AuthorEntity {
  const AuthorEntity({
    required this.name,
    this.birthYear,
    this.deathYear,
  });

  @override
  @JsonKey(defaultValue: '')
  final String name;
  @override
  @JsonKey(defaultValue: 0)
  final int? birthYear;
  @override
  @JsonKey(defaultValue: 0)
  final int? deathYear;

  factory AuthorEntity.fromJson(Map<String, Object?> json) => _$AuthorEntityFromJson(json);

  Map<String, Object?> toJson() => _$AuthorEntityToJson(this);
}
