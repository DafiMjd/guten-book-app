import 'package:freezed_annotation/freezed_annotation.dart';
import '../book_entity.dart';

part 'response_list_book_entity.freezed.dart';
part 'response_list_book_entity.g.dart';

@freezed
@JsonSerializable()
class ResponseListBookEntity with _$ResponseListBookEntity {
  const ResponseListBookEntity({
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

  factory ResponseListBookEntity.fromJson(Map<String, Object?> json) =>
      _$ResponseListBookEntityFromJson(json);

  Map<String, Object?> toJson() => _$ResponseListBookEntityToJson(this);
}
