// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_receiver_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateReceiverAddressMS _$UpdateReceiverAddressMSFromJson(
        Map<String, dynamic> json) =>
    UpdateReceiverAddressMS(
      receiverAddressID: json['receiverAddressID'] as String?,
      receiverContactName: json['receiverContactName'] as String?,
      receiverPhone: json['receiverPhone'] as String?,
      receiverEmail: json['receiverEmail'] as String?,
      cityID: json['cityID'] as String?,
      districtID: json['districtID'] as String?,
      addressString: json['addressString'] as String?,
      addressLabel: json['addressLabel'] as int?,
    );

Map<String, dynamic> _$UpdateReceiverAddressMSToJson(
        UpdateReceiverAddressMS instance) =>
    <String, dynamic>{
      'receiverAddressID': instance.receiverAddressID,
      'receiverContactName': instance.receiverContactName,
      'receiverPhone': instance.receiverPhone,
      'receiverEmail': instance.receiverEmail,
      'cityID': instance.cityID,
      'districtID': instance.districtID,
      'addressString': instance.addressString,
      'addressLabel': instance.addressLabel,
    };

ReponseUpdateReceiverAddressMS _$ReponseUpdateReceiverAddressMSFromJson(
        Map<String, dynamic> json) =>
    ReponseUpdateReceiverAddressMS(
      status: json['status'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ReponseUpdateReceiverAddressMSToJson(
        ReponseUpdateReceiverAddressMS instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
