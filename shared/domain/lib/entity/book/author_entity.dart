import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_entity.freezed.dart';
part 'author_entity.g.dart';

@freezed
@JsonSerializable()
class AuthorEntity with _$AuthorEntity {
  const AuthorEntity({
    required this.name,
    required this.birthYear,
    required this.deathYear,
  });

  @override
  final String name;
  @override
  final int birthYear;
  @override
  final int deathYear;

  factory AuthorEntity.fromJson(Map<String, Object?> json) => _$AuthorEntityFromJson(json);

  Map<String, Object?> toJson() => _$AuthorEntityToJson(this);
}
