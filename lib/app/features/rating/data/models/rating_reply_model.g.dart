// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_reply_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatingReplyModel _$RatingReplyModelFromJson(Map<String, dynamic> json) =>
    RatingReplyModel(
      itemId: json['itemid'] as String?,
      createdTime: json['ctime'] as String?,
      userId: json['userid'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$RatingReplyModelToJson(RatingReplyModel instance) =>
    <String, dynamic>{
      'itemid': instance.itemId,
      'ctime': instance.createdTime,
      'userid': instance.userId,
      'comment': instance.comment,
    };
