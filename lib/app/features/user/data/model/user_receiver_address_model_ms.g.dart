// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_receiver_address_model_ms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListReceiverAddressesMS _$ListReceiverAddressesMSFromJson(
        Map<String, dynamic> json) =>
    ListReceiverAddressesMS(
      receiverAddresses: (json['receiverAddresses'] as List<dynamic>?)
          ?.map((e) => ReceiverAddressesMS.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListReceiverAddressesMSToJson(
        ListReceiverAddressesMS instance) =>
    <String, dynamic>{
      'receiverAddresses': instance.receiverAddresses,
    };

ReceiverAddressesMS _$ReceiverAddressesMSFromJson(Map<String, dynamic> json) =>
    ReceiverAddressesMS(
      receiverAddressID: json['receiverAddressID'] as String?,
      districtID: json['districtID'] as String?,
      cityID: json['cityID'] as String?,
      districtName: json['districtName'] as String?,
      cityName: json['cityName'] as String?,
      wardID: json['wardID'] as String?,
      wardName: json['wardName'] as String?,
      addressLabel:
          $enumDecodeNullable(_$AddressTypeEnumMap, json['addressLabel']),
      userID: json['userID'] as String?,
      isDefault: json['isDefault'] as int?,
      addressString: json['addressString'] as String?,
      addressDetail: json['addressDetail'] as String?,
      receiverContactName: json['receiverContactName'] as String?,
      receiverPhone: json['receiverPhone'] as String?,
      receiverEmail: json['receiverEmail'] as String?,
      receiverEmailID: json['receiverEmailID'] as String?,
    );

Map<String, dynamic> _$ReceiverAddressesMSToJson(
        ReceiverAddressesMS instance) =>
    <String, dynamic>{
      'receiverAddressID': instance.receiverAddressID,
      'districtID': instance.districtID,
      'cityID': instance.cityID,
      'districtName': instance.districtName,
      'cityName': instance.cityName,
      'wardID': instance.wardID,
      'wardName': instance.wardName,
      'addressLabel': _$AddressTypeEnumMap[instance.addressLabel],
      'userID': instance.userID,
      'isDefault': instance.isDefault,
      'addressString': instance.addressString,
      'addressDetail': instance.addressDetail,
      'receiverContactName': instance.receiverContactName,
      'receiverPhone': instance.receiverPhone,
      'receiverEmail': instance.receiverEmail,
      'receiverEmailID': instance.receiverEmailID,
    };

const _$AddressTypeEnumMap = {
  AddressType.home: 0,
  AddressType.office: 1,
  AddressType.other: 2,
};
