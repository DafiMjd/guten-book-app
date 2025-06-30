import 'package:freezed_annotation/freezed_annotation.dart';

part 'format_entity.freezed.dart';
part 'format_entity.g.dart';

@freezed
@JsonSerializable()
class FormatsEntity with _$FormatsEntity {
  const FormatsEntity({
    this.textHtml,
    this.textHtmlCharsetUtf8,
    this.applicationEpubZip,
    this.applicationXMobipocketEbook,
    this.textPlainCharsetUsAscii,
    this.textPlainCharsetUtf8,
    this.applicationRdfXml,
    this.imageJpeg,
    this.applicationOctetStream,
  });

  @override
  @JsonKey(name: 'text/html')
  final String? textHtml;
  @override
  @JsonKey(name: 'text/html; charset=utf-8')
  final String? textHtmlCharsetUtf8;
  @override
  @JsonKey(name: 'application/epub+zip')
  final String? applicationEpubZip;
  @override
  @JsonKey(name: 'application/x-mobipocket-ebook')
  final String? applicationXMobipocketEbook;
  @override
  @JsonKey(name: 'text/plain; charset=us-ascii')
  final String? textPlainCharsetUsAscii;
  @override
  @JsonKey(name: 'text/plain; charset=utf-8')
  final String? textPlainCharsetUtf8;
  @override
  @JsonKey(name: 'application/rdf+xml')
  final String? applicationRdfXml;
  @override
  @JsonKey(name: 'image/jpeg')
  final String? imageJpeg;
  @override
  @JsonKey(name: 'application/octet-stream')
  final String? applicationOctetStream;

  factory FormatsEntity.fromJson(Map<String, Object?> json) => _$FormatsEntityFromJson(json);

  Map<String, Object?> toJson() => _$FormatsEntityToJson(this);
}
