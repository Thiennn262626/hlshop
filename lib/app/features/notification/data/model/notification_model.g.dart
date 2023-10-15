// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationListResp _$NotificationListRespFromJson(
        Map<String, dynamic> json) =>
    NotificationListResp(
      result: (json['result'] as List<dynamic>?)
          ?.map((e) =>
              NotificationDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num?,
    );

Map<String, dynamic> _$NotificationListRespToJson(
        NotificationListResp instance) =>
    <String, dynamic>{
      'result': instance.result,
      'total': instance.total,
    };

NotificationDetailModel _$NotificationDetailModelFromJson(
        Map<String, dynamic> json) =>
    NotificationDetailModel(
      messageID: json['messageID'] as String?,
      createdDate: json['createdDate'] as String?,
      content: json['content'] as String?,
      title: json['title'] as String?,
      hasMedia: json['hasMedia'] as bool?,
      hasRead: json['hasRead'] as bool?,
      updatedDate: json['updatedDate'] as String?,
      messageType: json['messageType'] as int?,
      messageStatus: json['messageStatus'] as String?,
      objectID: json['objectID'] as String?,
      quoteMessageID: json['quoteMessageID'] as String?,
      sourceUserID: json['sourceUserID'] as String?,
      destUserID: json['destUserID'] as String?,
      conversationMessageID: json['conversationMessageID'] as String?,
      urlObjectID: json['urlObjectID'] as String?,
      sourceUserContactName: json['sourceUserContactName'] as String?,
      sourceUserAvatar: json['sourceUserAvatar'] as String?,
      validToDate: json['validToDate'],
      userTypes: json['userTypes'],
      noticeSchedulerID: json['noticeSchedulerID'] as String?,
      conversationGroupID: json['conversationGroupID'] as String?,
      consultantID: json['consultantID'] as String?,
    );

Map<String, dynamic> _$NotificationDetailModelToJson(
        NotificationDetailModel instance) =>
    <String, dynamic>{
      'messageID': instance.messageID,
      'createdDate': instance.createdDate,
      'content': instance.content,
      'title': instance.title,
      'hasMedia': instance.hasMedia,
      'hasRead': instance.hasRead,
      'updatedDate': instance.updatedDate,
      'messageType': instance.messageType,
      'messageStatus': instance.messageStatus,
      'objectID': instance.objectID,
      'quoteMessageID': instance.quoteMessageID,
      'sourceUserID': instance.sourceUserID,
      'destUserID': instance.destUserID,
      'conversationMessageID': instance.conversationMessageID,
      'urlObjectID': instance.urlObjectID,
      'sourceUserContactName': instance.sourceUserContactName,
      'sourceUserAvatar': instance.sourceUserAvatar,
      'validToDate': instance.validToDate,
      'userTypes': instance.userTypes,
      'noticeSchedulerID': instance.noticeSchedulerID,
      'conversationGroupID': instance.conversationGroupID,
      'consultantID': instance.consultantID,
    };

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    NotificationModel(
      destUserID: json['destUserID'] as String?,
      errorCode: json['errorCode'] as String?,
      userTypes: json['userTypes'] as String?,
      type: json['type'],
      broadcast: json['broadcast'] as int?,
      data: json['data'],
      userID: json['userID'] as String?,
    );

Map<String, dynamic> _$NotificationModelToJson(NotificationModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'broadcast': instance.broadcast,
      'data': instance.data,
      'userID': instance.userID,
      'userTypes': instance.userTypes,
      'destUserID': instance.destUserID,
      'errorCode': instance.errorCode,
    };

NotificationMarkAsReadReq _$NotificationMarkAsReadReqFromJson(
        Map<String, dynamic> json) =>
    NotificationMarkAsReadReq(
      messageID: json['messageID'] as String?,
    );

Map<String, dynamic> _$NotificationMarkAsReadReqToJson(
        NotificationMarkAsReadReq instance) =>
    <String, dynamic>{
      'messageID': instance.messageID,
    };

NotificationMarkAsReadResp _$NotificationMarkAsReadRespFromJson(
        Map<String, dynamic> json) =>
    NotificationMarkAsReadResp(
      messageID: json['messageID'] as String?,
    );

Map<String, dynamic> _$NotificationMarkAsReadRespToJson(
        NotificationMarkAsReadResp instance) =>
    <String, dynamic>{
      'messageID': instance.messageID,
    };

CreateBookingNotifyModel _$CreateBookingNotifyModelFromJson(
        Map<String, dynamic> json) =>
    CreateBookingNotifyModel(
      bookingID: json['bookingID'] as String?,
      objectID: json['objectID'] as String?,
      objectType: json['objectType'],
    );

Map<String, dynamic> _$CreateBookingNotifyModelToJson(
        CreateBookingNotifyModel instance) =>
    <String, dynamic>{
      'objectID': instance.objectID,
      'objectType': instance.objectType,
      'bookingID': instance.bookingID,
    };

CreateDepositNotifyModel _$CreateDepositNotifyModelFromJson(
        Map<String, dynamic> json) =>
    CreateDepositNotifyModel(
      depositID: json['depositID'] as String?,
      objectID: json['objectID'] as String?,
      objectType: json['objectType'],
    );

Map<String, dynamic> _$CreateDepositNotifyModelToJson(
        CreateDepositNotifyModel instance) =>
    <String, dynamic>{
      'objectID': instance.objectID,
      'objectType': instance.objectType,
      'depositID': instance.depositID,
    };
