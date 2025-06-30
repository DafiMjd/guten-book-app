import 'package:freezed_annotation/freezed_annotation.dart';
import '../book_entity.dart';

part 'response_book_entity.freezed.dart';
part 'response_book_entity.g.dart';

@freezed
@JsonSerializable()
class ResponseBookEntity with _$ResponseBookEntity {
  const ResponseBookEntity({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final List<BookEntity> results;

  factory ResponseBookEntity.fromJson(Map<String, Object?> json) =>
      _$ResponseBookEntityFromJson(json);

  Map<String, Object?> toJson() => _$ResponseBookEntityToJson(this);
}
