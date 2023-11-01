// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ms_user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsAddPhoneReq _$MsAddPhoneReqFromJson(Map<String, dynamic> json) =>
    MsAddPhoneReq(
      phoneNo: json['phoneNo'] as String?,
      phoneLabel: json['phoneLabel'] as int?,
      isDefault: json['isDefault'] as int?,
    );

Map<String, dynamic> _$MsAddPhoneReqToJson(MsAddPhoneReq instance) =>
    <String, dynamic>{
      'phoneNo': instance.phoneNo,
      'phoneLabel': instance.phoneLabel,
      'isDefault': instance.isDefault,
    };

MsAddPhoneResultWrapper _$MsAddPhoneResultWrapperFromJson(
        Map<String, dynamic> json) =>
    MsAddPhoneResultWrapper(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : MsAddPhoneResp.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MsAddPhoneResultWrapperToJson(
        MsAddPhoneResultWrapper instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
    };

MsAddPhoneResp _$MsAddPhoneRespFromJson(Map<String, dynamic> json) =>
    MsAddPhoneResp(
      userID: json['userID'] as String?,
      uuid: json['uuid'] as String?,
      phoneID: json['phoneID'] as String?,
      phone: json['phone'] as String?,
      today: json['today'] as String?,
      expired: json['expired'] as String?,
    );

Map<String, dynamic> _$MsAddPhoneRespToJson(MsAddPhoneResp instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'uuid': instance.uuid,
      'phoneID': instance.phoneID,
      'phone': instance.phone,
      'today': instance.today,
      'expired': instance.expired,
    };

MsVerifyPhoneReq _$MsVerifyPhoneReqFromJson(Map<String, dynamic> json) =>
    MsVerifyPhoneReq(
      phoneID: json['phoneID'] as String?,
      uuid: json['uuid'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$MsVerifyPhoneReqToJson(MsVerifyPhoneReq instance) =>
    <String, dynamic>{
      'phoneID': instance.phoneID,
      'uuid': instance.uuid,
      'otp': instance.otp,
    };

MsResendPhoneReq _$MsResendPhoneReqFromJson(Map<String, dynamic> json) =>
    MsResendPhoneReq(
      phoneID: json['phoneID'] as String?,
    );

Map<String, dynamic> _$MsResendPhoneReqToJson(MsResendPhoneReq instance) =>
    <String, dynamic>{
      'phoneID': instance.phoneID,
    };

MsAddEmailReq _$MsAddEmailReqFromJson(Map<String, dynamic> json) =>
    MsAddEmailReq(
      emailAddress: json['emailAddress'] as String?,
      emailLabel: json['emailLabel'] as int?,
      isDefault: json['isDefault'] as int?,
    );

Map<String, dynamic> _$MsAddEmailReqToJson(MsAddEmailReq instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'emailLabel': instance.emailLabel,
      'isDefault': instance.isDefault,
    };

MsAddEmailResultWrapper _$MsAddEmailResultWrapperFromJson(
        Map<String, dynamic> json) =>
    MsAddEmailResultWrapper(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : MsAddEmailResp.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MsAddEmailResultWrapperToJson(
        MsAddEmailResultWrapper instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
    };

MsAddEmailResp _$MsAddEmailRespFromJson(Map<String, dynamic> json) =>
    MsAddEmailResp(
      userID: json['userID'] as String?,
      uuid: json['uuid'] as String?,
      emailID: json['emailID'] as String?,
      email: json['email'] as String?,
      today: json['today'] as String?,
      expired: json['expired'] as String?,
    );

Map<String, dynamic> _$MsAddEmailRespToJson(MsAddEmailResp instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'uuid': instance.uuid,
      'emailID': instance.emailID,
      'email': instance.email,
      'today': instance.today,
      'expired': instance.expired,
    };

MsVerifyEmailReq _$MsVerifyEmailReqFromJson(Map<String, dynamic> json) =>
    MsVerifyEmailReq(
      emailID: json['emailID'] as String?,
      uuid: json['uuid'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$MsVerifyEmailReqToJson(MsVerifyEmailReq instance) =>
    <String, dynamic>{
      'emailID': instance.emailID,
      'uuid': instance.uuid,
      'otp': instance.otp,
    };

MsResendEmailReq _$MsResendEmailReqFromJson(Map<String, dynamic> json) =>
    MsResendEmailReq(
      emailID: json['emailID'] as String?,
    );

Map<String, dynamic> _$MsResendEmailReqToJson(MsResendEmailReq instance) =>
    <String, dynamic>{
      'emailID': instance.emailID,
    };
