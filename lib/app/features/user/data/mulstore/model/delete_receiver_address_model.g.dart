// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_receiver_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteReceiverAddressMS _$DeleteReceiverAddressMSFromJson(
        Map<String, dynamic> json) =>
    DeleteReceiverAddressMS(
      receiverAddressID: json['receiverAddressID'] as String?,
    );

Map<String, dynamic> _$DeleteReceiverAddressMSToJson(
        DeleteReceiverAddressMS instance) =>
    <String, dynamic>{
      'receiverAddressID': instance.receiverAddressID,
    };

ReponseDeleteReceiverAddressMS _$ReponseDeleteReceiverAddressMSFromJson(
        Map<String, dynamic> json) =>
    ReponseDeleteReceiverAddressMS(
      status: json['status'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ReponseDeleteReceiverAddressMSToJson(
        ReponseDeleteReceiverAddressMS instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

MSAddDefaultAddress _$MSAddDefaultAddressFromJson(Map<String, dynamic> json) =>
    MSAddDefaultAddress(
      receiverAddressID: json['receiverAddressID'] as String?,
    );

Map<String, dynamic> _$MSAddDefaultAddressToJson(
        MSAddDefaultAddress instance) =>
    <String, dynamic>{
      'receiverAddressID': instance.receiverAddressID,
    };
