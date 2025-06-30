import 'package:freezed_annotation/freezed_annotation.dart';
import 'author_entity.dart';

part 'book_entity.freezed.dart';
part 'book_entity.g.dart';

@freezed
@JsonSerializable()
class BookEntity with _$BookEntity {
  const BookEntity({
    required this.id,
    required this.title,
    required this.authors,
    required this.summaries,
    required this.translators,
    required this.subjects,
    required this.bookshelves,
    required this.languages,
    required this.copyright,
    required this.mediaType,
    required this.downloadCount,
  });

  @override
  final int id;
  @override
  final String title;
  @override
  final List<AuthorEntity> authors;
  @override
  final List<String> summaries;
  @override
  final List<dynamic> translators;
  @override
  final List<String> subjects;
  @override
  final List<String> bookshelves;
  @override
  final List<String> languages;
  @override
  final bool copyright;
  @override
  final String mediaType;
  @override
  final int downloadCount;

  factory BookEntity.fromJson(Map<String, Object?> json) => _$BookEntityFromJson(json);

  Map<String, Object?> toJson() => _$BookEntityToJson(this);
}
