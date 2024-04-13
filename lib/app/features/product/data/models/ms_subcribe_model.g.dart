// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ms_subcribe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsSubcribeModel _$MsSubcribeModelFromJson(Map<String, dynamic> json) =>
    MsSubcribeModel(
      status: json['status'] as int?,
      isSubscribed: json['isSubscribed'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$MsSubcribeModelToJson(MsSubcribeModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'isSubscribed': instance.isSubscribed,
      'message': instance.message,
    };
