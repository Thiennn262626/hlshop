// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageEntity _$ImageEntityFromJson(Map<String, dynamic> json) => ImageEntity(
      object: json['object'],
      id: json['id'] as String?,
      src: json['src'] as String?,
      name: json['name'] as String?,
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$ImageEntityToJson(ImageEntity instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      'src': instance.src,
      'name': instance.name,
      'alt': instance.alt,
    };
