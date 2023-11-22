// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_receiver_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddReceiverAddressMS _$AddReceiverAddressMSFromJson(
        Map<String, dynamic> json) =>
    AddReceiverAddressMS(
      receiverContactName: json['receiverContactName'] as String?,
      receiverPhone: json['receiverPhone'] as String?,
      receiverEmail: json['receiverEmail'] as String?,
      cityName: json['cityName'] as String?,
      cityID: json['cityID'] as String?,
      districtName: json['districtName'] as String?,
      districtID: json['districtID'] as String?,
      wardName: json['wardName'] as String?,
      wardID: json['wardID'] as String?,
      addressDetail: json['addressDetail'] as String?,
      addressLabel: json['addressLabel'] as int?,
    );

Map<String, dynamic> _$AddReceiverAddressMSToJson(
        AddReceiverAddressMS instance) =>
    <String, dynamic>{
      'receiverContactName': instance.receiverContactName,
      'receiverPhone': instance.receiverPhone,
      'receiverEmail': instance.receiverEmail,
      'cityName': instance.cityName,
      'cityID': instance.cityID,
      'districtName': instance.districtName,
      'districtID': instance.districtID,
      'wardName': instance.wardName,
      'wardID': instance.wardID,
      'addressDetail': instance.addressDetail,
      'addressLabel': instance.addressLabel,
    };

ResponseAddReceiverAddressMS _$ResponseAddReceiverAddressMSFromJson(
        Map<String, dynamic> json) =>
    ResponseAddReceiverAddressMS(
      status: json['status'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ResponseAddReceiverAddressMSToJson(
        ResponseAddReceiverAddressMS instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
