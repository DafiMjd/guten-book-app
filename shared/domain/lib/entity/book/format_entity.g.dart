// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'format_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormatsEntity _$FormatsEntityFromJson(Map<String, dynamic> json) =>
    FormatsEntity(
      textHtml: json['text/html'] as String?,
      textHtmlCharsetUtf8: json['text/html; charset=utf-8'] as String?,
      applicationEpubZip: json['application/epub+zip'] as String?,
      applicationXMobipocketEbook:
          json['application/x-mobipocket-ebook'] as String?,
      textPlainCharsetUsAscii: json['text/plain; charset=us-ascii'] as String?,
      textPlainCharsetUtf8: json['text/plain; charset=utf-8'] as String?,
      applicationRdfXml: json['application/rdf+xml'] as String?,
      imageJpeg: json['image/jpeg'] as String?,
      applicationOctetStream: json['application/octet-stream'] as String?,
    );

Map<String, dynamic> _$FormatsEntityToJson(FormatsEntity instance) =>
    <String, dynamic>{
      'text/html': instance.textHtml,
      'text/html; charset=utf-8': instance.textHtmlCharsetUtf8,
      'application/epub+zip': instance.applicationEpubZip,
      'application/x-mobipocket-ebook': instance.applicationXMobipocketEbook,
      'text/plain; charset=us-ascii': instance.textPlainCharsetUsAscii,
      'text/plain; charset=utf-8': instance.textPlainCharsetUtf8,
      'application/rdf+xml': instance.applicationRdfXml,
      'image/jpeg': instance.imageJpeg,
      'application/octet-stream': instance.applicationOctetStream,
    };
