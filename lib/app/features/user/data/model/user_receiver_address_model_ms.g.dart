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
      addressLabel:
          $enumDecodeNullable(_$AddressTypeEnumMap, json['addressLabel']),
      userID: json['userID'] as String?,
      isDefault: json['isDefault'] as int?,
      addressString: json['addressString'] as String?,
      receiverContactName: json['receiverContactName'] as String?,
      receiverPhone: json['receiverPhone'] as String?,
      receiverEmail: json['receiverEmail'] as String?,
    );

Map<String, dynamic> _$ReceiverAddressesMSToJson(
        ReceiverAddressesMS instance) =>
    <String, dynamic>{
      'receiverAddressID': instance.receiverAddressID,
      'districtID': instance.districtID,
      'cityID': instance.cityID,
      'addressLabel': _$AddressTypeEnumMap[instance.addressLabel],
      'userID': instance.userID,
      'isDefault': instance.isDefault,
      'addressString': instance.addressString,
      'receiverContactName': instance.receiverContactName,
      'receiverPhone': instance.receiverPhone,
      'receiverEmail': instance.receiverEmail,
    };

const _$AddressTypeEnumMap = {
  AddressType.home: 0,
  AddressType.office: 1,
  AddressType.other: 2,
};
