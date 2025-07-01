import 'package:freezed_annotation/freezed_annotation.dart';
import 'author_entity.dart';
import 'format_entity.dart';

part 'book_entity.freezed.dart';
part 'book_entity.g.dart';

@freezed
@JsonSerializable(includeIfNull: true)
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
    required this.formats,
  });

  @override
  @JsonKey(defaultValue: 0)
  final int id;
  @override
  @JsonKey(defaultValue: '')
  final String title;
  @override
  @JsonKey(defaultValue: [])
  final List<AuthorEntity> authors;
  @override
  @JsonKey(defaultValue: [])
  final List<String> summaries;
  @override
  @JsonKey(defaultValue: [])
  final List<AuthorEntity> translators;
  @override
  @JsonKey(defaultValue: [])
  final List<String> subjects;
  @override
  @JsonKey(defaultValue: [])
  final List<String> bookshelves;
  @override
  @JsonKey(defaultValue: [])
  final List<String> languages;
  @override
  @JsonKey(defaultValue: false)
  final bool copyright;
  @override
  @JsonKey(defaultValue: '', name: 'media_type')
  final String mediaType;
  @override
  @JsonKey(defaultValue: 0, name: 'download_count')
  final int downloadCount;
  @override
  final FormatsEntity formats;

  factory BookEntity.empty() => BookEntity(
        id: 0,
        title: '',
        authors: [],
        summaries: [],
        translators: [],
        subjects: [],
        bookshelves: [],
        languages: [],
        copyright: false,
        mediaType: '',
        downloadCount: 0,
        formats: FormatsEntity.empty(),
      );

  factory BookEntity.fromJson(Map<String, Object?> json) =>
      _$BookEntityFromJson(json);

  Map<String, Object?> toJson() => _$BookEntityToJson(this);

  String get authorName {
    if (authors.isEmpty) {
      return 'No Author';
    }
    final name = authors.first.name;
    if (authors.length == 1) {
      return authors.first.name;
    }

    return '$name, and others';
  }

  
}
