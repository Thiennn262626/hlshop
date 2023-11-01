// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_base_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      object: json['object'],
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      fullName: json['fullName'] as String?,
      avatar: json['avatar'] as String?,
      receiveAddressList: (json['receiveAddressList'] as List<dynamic>?)
          ?.map((e) => UserAddressEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      phoneList: (json['phoneList'] as List<dynamic>?)
          ?.map((e) => UserPhoneEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      emailList: (json['emailList'] as List<dynamic>?)
          ?.map((e) => UserEmailEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      addressList: (json['addressList'] as List<dynamic>?)
          ?.map((e) => UserAddressEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      userCover: json['userCover'] as String?,
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      'userName': instance.userName,
      'fullName': instance.fullName,
      'avatar': instance.avatar,
      'phoneList': instance.phoneList,
      'emailList': instance.emailList,
      'addressList': instance.addressList,
      'userCover': instance.userCover,
      'receiveAddressList': instance.receiveAddressList,
    };

UserPhoneEntity _$UserPhoneEntityFromJson(Map<String, dynamic> json) =>
    UserPhoneEntity(
      object: json['object'],
      id: json['id'] as String?,
      phone: json['phone'] as String?,
      countryCode: json['countryCode'] as String?,
      isDefault: boolFromAny(json['isDefault']),
      isVerify: boolFromAny(json['isVerify']),
    );

Map<String, dynamic> _$UserPhoneEntityToJson(UserPhoneEntity instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      'phone': instance.phone,
      'countryCode': instance.countryCode,
      'isDefault': boolToNum(instance.isDefault),
      'isVerify': boolToNum(instance.isVerify),
    };

UserEmailEntity _$UserEmailEntityFromJson(Map<String, dynamic> json) =>
    UserEmailEntity(
      id: json['id'] as String?,
      emailAddress: json['emailAddress'] as String?,
      emailLabel: json['emailLabel'] as int?,
      isDefault: boolFromAny(json['isDefault']),
      isVerify: boolFromAny(json['isVerify']),
    );

Map<String, dynamic> _$UserEmailEntityToJson(UserEmailEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'emailAddress': instance.emailAddress,
      'emailLabel': instance.emailLabel,
      'isDefault': boolToNum(instance.isDefault),
      'isVerify': boolToNum(instance.isVerify),
    };

UserEmailResendOtpEntity _$UserEmailResendOtpEntityFromJson(
        Map<String, dynamic> json) =>
    UserEmailResendOtpEntity(
      emailID: json['emailID'] as String?,
    );

Map<String, dynamic> _$UserEmailResendOtpEntityToJson(
        UserEmailResendOtpEntity instance) =>
    <String, dynamic>{
      'emailID': instance.emailID,
    };

UserAddressEntity _$UserAddressEntityFromJson(Map<String, dynamic> json) =>
    UserAddressEntity(
      object: json['object'],
      id: json['id'] as String?,
      fullName: json['fullName'] as String?,
      phone: json['phone'] as String?,
      fullAddress: json['fullAddress'] as String?,
      addressType:
          $enumDecodeNullable(_$AddressTypeEnumMap, json['addressType']),
      city: json['city'] == null
          ? null
          : CityEntity.fromJson(json['city'] as Map<String, dynamic>),
      district: json['district'] == null
          ? null
          : DistrictEntity.fromJson(json['district'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserAddressEntityToJson(UserAddressEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'phone': instance.phone,
      'fullAddress': instance.fullAddress,
      'city': instance.city,
      'district': instance.district,
      'addressType': _$AddressTypeEnumMap[instance.addressType],
      'object': instance.object,
    };

const _$AddressTypeEnumMap = {
  AddressType.home: 0,
  AddressType.office: 1,
  AddressType.other: 2,
};

AddReceiverAddressEntity _$AddReceiverAddressEntityFromJson(
        Map<String, dynamic> json) =>
    AddReceiverAddressEntity(
      status: json['status'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AddReceiverAddressEntityToJson(
        AddReceiverAddressEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

AddressData _$AddressDataFromJson(Map<String, dynamic> json) => AddressData(
      id: json['id'] as String?,
      name: json['name'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      object: json['object'],
    );

Map<String, dynamic> _$AddressDataToJson(AddressData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lat': instance.lat,
      'lng': instance.lng,
      'object': instance.object,
    };
