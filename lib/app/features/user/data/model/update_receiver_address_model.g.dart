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
      receiverEmailID: json['receiverEmailID'] as String?,
      cityName: json['cityName'] as String?,
      cityID: json['cityID'] as String?,
      districtName: json['districtName'] as String?,
      districtID: json['districtID'] as String?,
      wardName: json['wardName'] as String?,
      wardID: json['wardID'] as String?,
      addressDetail: json['addressDetail'] as String?,
      addressLabel: json['addressLabel'] as int?,
    );

Map<String, dynamic> _$UpdateReceiverAddressMSToJson(
        UpdateReceiverAddressMS instance) =>
    <String, dynamic>{
      'receiverAddressID': instance.receiverAddressID,
      'receiverContactName': instance.receiverContactName,
      'receiverPhone': instance.receiverPhone,
      'receiverEmailID': instance.receiverEmailID,
      'cityName': instance.cityName,
      'cityID': instance.cityID,
      'districtName': instance.districtName,
      'districtID': instance.districtID,
      'wardName': instance.wardName,
      'wardID': instance.wardID,
      'addressDetail': instance.addressDetail,
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
