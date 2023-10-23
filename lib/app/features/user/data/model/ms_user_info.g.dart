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
