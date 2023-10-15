import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notification_model.g.dart';

@JsonSerializable()
class NotificationListResp {
  List<NotificationDetailModel>? result;
  num? total;

  NotificationListResp({this.result, this.total});

  factory NotificationListResp.fromJson(Map<String, dynamic> json) =>
      _$NotificationListRespFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationListRespToJson(this);
}

@JsonSerializable()
class NotificationDetailModel {
  final String? messageID;
  final String? createdDate;
  final String? content;
  final String? title;

  // @JsonKey(fromJson: boolFromAny)
  final bool? hasMedia;

  // @JsonKey(fromJson: boolFromAny)
  final bool? hasRead;
  final String? updatedDate;
  final int? messageType;
  final String? messageStatus;
  final String? objectID;
  final String? quoteMessageID;
  final String? sourceUserID;
  final String? destUserID;
  final String? conversationMessageID;
  final String? urlObjectID;
  final String? sourceUserContactName;
  final String? sourceUserAvatar;
  final dynamic? validToDate;
  final dynamic? userTypes;
  final String? noticeSchedulerID;
  final String? conversationGroupID;
  final String? consultantID;

  factory NotificationDetailModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationDetailModelToJson(this);

//<editor-fold desc="Data Methods">

  const NotificationDetailModel({
    this.messageID,
    this.createdDate,
    this.content,
    this.title,
    this.hasMedia,
    this.hasRead,
    this.updatedDate,
    this.messageType,
    this.messageStatus,
    this.objectID,
    this.quoteMessageID,
    this.sourceUserID,
    this.destUserID,
    this.conversationMessageID,
    this.urlObjectID,
    this.sourceUserContactName,
    this.sourceUserAvatar,
    this.validToDate,
    this.userTypes,
    this.noticeSchedulerID,
    this.conversationGroupID,
    this.consultantID,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NotificationDetailModel &&
          runtimeType == other.runtimeType &&
          messageID == other.messageID &&
          createdDate == other.createdDate &&
          content == other.content &&
          title == other.title &&
          hasMedia == other.hasMedia &&
          hasRead == other.hasRead &&
          updatedDate == other.updatedDate &&
          messageType == other.messageType &&
          messageStatus == other.messageStatus &&
          objectID == other.objectID &&
          quoteMessageID == other.quoteMessageID &&
          sourceUserID == other.sourceUserID &&
          destUserID == other.destUserID &&
          conversationMessageID == other.conversationMessageID &&
          urlObjectID == other.urlObjectID &&
          sourceUserContactName == other.sourceUserContactName &&
          sourceUserAvatar == other.sourceUserAvatar &&
          validToDate == other.validToDate &&
          userTypes == other.userTypes &&
          noticeSchedulerID == other.noticeSchedulerID &&
          conversationGroupID == other.conversationGroupID &&
          consultantID == other.consultantID);

  @override
  int get hashCode =>
      messageID.hashCode ^
      createdDate.hashCode ^
      content.hashCode ^
      title.hashCode ^
      hasMedia.hashCode ^
      hasRead.hashCode ^
      updatedDate.hashCode ^
      messageType.hashCode ^
      messageStatus.hashCode ^
      objectID.hashCode ^
      quoteMessageID.hashCode ^
      sourceUserID.hashCode ^
      destUserID.hashCode ^
      conversationMessageID.hashCode ^
      urlObjectID.hashCode ^
      sourceUserContactName.hashCode ^
      sourceUserAvatar.hashCode ^
      validToDate.hashCode ^
      userTypes.hashCode ^
      noticeSchedulerID.hashCode ^
      conversationGroupID.hashCode ^
      consultantID.hashCode;

  @override
  String toString() {
    return 'NotificationDetailModel{' +
        ' messageID: $messageID,' +
        ' createdDate: $createdDate,' +
        ' content: $content,' +
        ' title: $title,' +
        ' hasMedia: $hasMedia,' +
        ' hasRead: $hasRead,' +
        ' updatedDate: $updatedDate,' +
        ' messageType: $messageType,' +
        ' messageStatus: $messageStatus,' +
        ' objectID: $objectID,' +
        ' quoteMessageID: $quoteMessageID,' +
        ' sourceUserID: $sourceUserID,' +
        ' destUserID: $destUserID,' +
        ' conversationMessageID: $conversationMessageID,' +
        ' urlObjectID: $urlObjectID,' +
        ' sourceUserContactName: $sourceUserContactName,' +
        ' sourceUserAvatar: $sourceUserAvatar,' +
        ' validToDate: $validToDate,' +
        ' userTypes: $userTypes,' +
        ' noticeSchedulerID: $noticeSchedulerID,' +
        ' conversationGroupID: $conversationGroupID,' +
        ' consultantID: $consultantID,' +
        '}';
  }

  NotificationDetailModel copyWith({
    String? messageID,
    String? createdDate,
    String? content,
    String? title,
    bool? hasMedia,
    bool? hasRead,
    String? updatedDate,
    int? messageType,
    String? messageStatus,
    String? objectID,
    String? quoteMessageID,
    String? sourceUserID,
    String? destUserID,
    String? conversationMessageID,
    String? urlObjectID,
    String? sourceUserContactName,
    String? sourceUserAvatar,
    dynamic? validToDate,
    dynamic? userTypes,
    String? noticeSchedulerID,
    String? conversationGroupID,
    String? consultantID,
  }) {
    return NotificationDetailModel(
      messageID: messageID ?? this.messageID,
      createdDate: createdDate ?? this.createdDate,
      content: content ?? this.content,
      title: title ?? this.title,
      hasMedia: hasMedia ?? this.hasMedia,
      hasRead: hasRead ?? this.hasRead,
      updatedDate: updatedDate ?? this.updatedDate,
      messageType: messageType ?? this.messageType,
      messageStatus: messageStatus ?? this.messageStatus,
      objectID: objectID ?? this.objectID,
      quoteMessageID: quoteMessageID ?? this.quoteMessageID,
      sourceUserID: sourceUserID ?? this.sourceUserID,
      destUserID: destUserID ?? this.destUserID,
      conversationMessageID:
          conversationMessageID ?? this.conversationMessageID,
      urlObjectID: urlObjectID ?? this.urlObjectID,
      sourceUserContactName:
          sourceUserContactName ?? this.sourceUserContactName,
      sourceUserAvatar: sourceUserAvatar ?? this.sourceUserAvatar,
      validToDate: validToDate ?? this.validToDate,
      userTypes: userTypes ?? this.userTypes,
      noticeSchedulerID: noticeSchedulerID ?? this.noticeSchedulerID,
      conversationGroupID: conversationGroupID ?? this.conversationGroupID,
      consultantID: consultantID ?? this.consultantID,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'messageID': this.messageID,
      'createdDate': this.createdDate,
      'content': this.content,
      'title': this.title,
      'hasMedia': this.hasMedia,
      'hasRead': this.hasRead,
      'updatedDate': this.updatedDate,
      'messageType': this.messageType,
      'messageStatus': this.messageStatus,
      'objectID': this.objectID,
      'quoteMessageID': this.quoteMessageID,
      'sourceUserID': this.sourceUserID,
      'destUserID': this.destUserID,
      'conversationMessageID': this.conversationMessageID,
      'urlObjectID': this.urlObjectID,
      'sourceUserContactName': this.sourceUserContactName,
      'sourceUserAvatar': this.sourceUserAvatar,
      'validToDate': this.validToDate,
      'userTypes': this.userTypes,
      'noticeSchedulerID': this.noticeSchedulerID,
      'conversationGroupID': this.conversationGroupID,
      'consultantID': this.consultantID,
    };
  }

  factory NotificationDetailModel.fromMap(Map<String, dynamic> map) {
    return NotificationDetailModel(
      messageID: map['messageID'] as String,
      createdDate: map['createdDate'] as String,
      content: map['content'] as String,
      title: map['title'] as String,
      hasMedia: map['hasMedia'] as bool,
      hasRead: map['hasRead'] as bool,
      updatedDate: map['updatedDate'] as String,
      messageType: map['messageType'] as int,
      messageStatus: map['messageStatus'] as String,
      objectID: map['objectID'] as String,
      quoteMessageID: map['quoteMessageID'] as String,
      sourceUserID: map['sourceUserID'] as String,
      destUserID: map['destUserID'] as String,
      conversationMessageID: map['conversationMessageID'] as String,
      urlObjectID: map['urlObjectID'] as String,
      sourceUserContactName: map['sourceUserContactName'] as String,
      sourceUserAvatar: map['sourceUserAvatar'] as String,
      validToDate: map['validToDate'] as dynamic,
      userTypes: map['userTypes'] as dynamic,
      noticeSchedulerID: map['noticeSchedulerID'] as String,
      conversationGroupID: map['conversationGroupID'] as String,
      consultantID: map['consultantID'] as String,
    );
  }

//</editor-fold>
}

@JsonSerializable(ignoreUnannotated: false)
class NotificationModel {
  @JsonKey(name: 'type')
  final dynamic? type;
  @JsonKey(name: 'broadcast')
  final int? broadcast;
  @JsonKey(name: 'data')
  final dynamic data;
  @JsonKey(name: 'userID')
  final String? userID;
  @JsonKey(name: 'userTypes')
  final String? userTypes;
  @JsonKey(name: 'destUserID')
  final String? destUserID;
  @JsonKey(name: 'errorCode')
  final String? errorCode;

  NotificationModel(
      {this.destUserID,
      this.errorCode,
      this.userTypes,
      this.type,
      this.broadcast,
      this.data,
      this.userID});

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class NotificationMarkAsReadReq {
  final String? messageID;

  NotificationMarkAsReadReq({this.messageID});

  factory NotificationMarkAsReadReq.fromJson(Map<String, dynamic> json) =>
      _$NotificationMarkAsReadReqFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationMarkAsReadReqToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class NotificationMarkAsReadResp {
  final String? messageID;

  NotificationMarkAsReadResp({this.messageID});

  factory NotificationMarkAsReadResp.fromJson(Map<String, dynamic> json) =>
      _$NotificationMarkAsReadRespFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationMarkAsReadRespToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class CreateBookingNotifyModel {
  @JsonKey(name: 'objectID')
  final String? objectID;
  @JsonKey(name: 'objectType')
  final dynamic? objectType;
  @JsonKey(name: 'bookingID')
  final String? bookingID;

  CreateBookingNotifyModel({this.bookingID, this.objectID, this.objectType});

  factory CreateBookingNotifyModel.fromJson(Map<String, dynamic> json) =>
      _$CreateBookingNotifyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CreateBookingNotifyModelToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class CreateDepositNotifyModel {
  @JsonKey(name: 'objectID')
  final String? objectID;
  @JsonKey(name: 'objectType')
  final dynamic? objectType;
  @JsonKey(name: 'depositID')
  final String? depositID;

  CreateDepositNotifyModel({this.depositID, this.objectID, this.objectType});

  factory CreateDepositNotifyModel.fromJson(Map<String, dynamic> json) =>
      _$CreateDepositNotifyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CreateDepositNotifyModelToJson(this);
}
