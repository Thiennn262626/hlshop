// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_data_ms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsPagingResult<T> _$MsPagingResultFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    MsPagingResult<T>(
      result: (json['result'] as List<dynamic>?)?.map(fromJsonT).toList(),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$MsPagingResultToJson<T>(
  MsPagingResult<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'result': instance.result?.map(toJsonT).toList(),
      'total': instance.total,
    };

MsMedia _$MsMediaFromJson(Map<String, dynamic> json) => MsMedia(
      mediaID: json['mediaID'] as String?,
      linkString: json['linkString'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      objectRefType: json['objectRefType'],
      mediaType: json['mediaType'] as int?,
      objectRefID: json['objectRefID'] as String?,
    );

Map<String, dynamic> _$MsMediaToJson(MsMedia instance) => <String, dynamic>{
      'mediaID': instance.mediaID,
      'linkString': instance.linkString,
      'title': instance.title,
      'description': instance.description,
      'objectRefType': instance.objectRefType,
      'mediaType': instance.mediaType,
      'objectRefID': instance.objectRefID,
    };

MsAppSetting _$MsAppSettingFromJson(Map<String, dynamic> json) => MsAppSetting(
      maxHotProductsShowing: json['maxHotProductsShowing'] as int?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$MsAppSettingToJson(MsAppSetting instance) =>
    <String, dynamic>{
      'maxHotProductsShowing': instance.maxHotProductsShowing,
      'version': instance.version,
    };
