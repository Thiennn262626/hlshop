// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_ms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMS _$UserMSFromJson(Map<String, dynamic> json) => UserMS(
      userID: json['userID'] as String?,
      userLoginID: json['userLoginID'] as String?,
      contactFullName: json['contactFullName'] as String?,
      slogan: json['slogan'] as String?,
      gender: json['gender'],
      pID: json['pID'],
      createdDate: json['createdDate'] as String?,
      accountType: json['accountType'] as int?,
      accountStatus: json['accountStatus'] as int?,
      userType: json['userType'],
      userAvatar: json['userAvatar'] as String?,
      userCover: json['userCover'] as String?,
      emails: (json['emails'] as List<dynamic>?)
          ?.map((e) => MsEmail.fromJson(e as Map<String, dynamic>))
          .toList(),
      phones: (json['phones'] as List<dynamic>?)
          ?.map((e) => MsPhone.fromJson(e as Map<String, dynamic>))
          .toList(),
      urls: (json['urls'] as List<dynamic>?)
          ?.map((e) => MsUrl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserMSToJson(UserMS instance) => <String, dynamic>{
      'userID': instance.userID,
      'userLoginID': instance.userLoginID,
      'contactFullName': instance.contactFullName,
      'slogan': instance.slogan,
      'gender': instance.gender,
      'pID': instance.pID,
      'createdDate': instance.createdDate,
      'accountType': instance.accountType,
      'accountStatus': instance.accountStatus,
      'userType': instance.userType,
      'userAvatar': instance.userAvatar,
      'userCover': instance.userCover,
      'emails': instance.emails,
      'phones': instance.phones,
      'urls': instance.urls,
    };

MsPhone _$MsPhoneFromJson(Map<String, dynamic> json) => MsPhone(
      phoneID: json['phoneID'] as String?,
      phoneLabel: json['phoneLabel'] as int?,
      isDefault: json['isDefault'] as int?,
      isVerify: json['isVerify'] as int?,
      phoneNo: json['phoneNo'] as String?,
      extendNumber: json['extendNumber'] as String?,
      phoneArea: json['phoneArea'] as String?,
      countryArea: json['countryArea'] as String?,
    );

Map<String, dynamic> _$MsPhoneToJson(MsPhone instance) => <String, dynamic>{
      'phoneID': instance.phoneID,
      'phoneNo': instance.phoneNo,
      'extendNumber': instance.extendNumber,
      'phoneArea': instance.phoneArea,
      'countryArea': instance.countryArea,
      'phoneLabel': instance.phoneLabel,
      'isDefault': instance.isDefault,
      'isVerify': instance.isVerify,
    };

MsUrl _$MsUrlFromJson(Map<String, dynamic> json) => MsUrl(
      urlID: json['urlID'] as String?,
      urlString: json['urlString'] as String?,
      isDefault: json['isDefault'] as int?,
    );

Map<String, dynamic> _$MsUrlToJson(MsUrl instance) => <String, dynamic>{
      'urlID': instance.urlID,
      'urlString': instance.urlString,
      'isDefault': instance.isDefault,
    };

MsEmail _$MsEmailFromJson(Map<String, dynamic> json) => MsEmail(
      emailID: json['emailID'] as String?,
      emailAddress: json['emailAddress'] as String?,
      emailLabel: json['emailLabel'] as int?,
      isDefault: json['isDefault'] as int?,
      isVerify: json['isVerify'] as int?,
    );

Map<String, dynamic> _$MsEmailToJson(MsEmail instance) => <String, dynamic>{
      'emailID': instance.emailID,
      'emailAddress': instance.emailAddress,
      'emailLabel': instance.emailLabel,
      'isDefault': instance.isDefault,
      'isVerify': instance.isVerify,
    };
