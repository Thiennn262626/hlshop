// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_contact_name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateContactNameMS _$UpdateContactNameMSFromJson(Map<String, dynamic> json) =>
    UpdateContactNameMS(
      contactFullName: json['contactFullName'] as String?,
    );

Map<String, dynamic> _$UpdateContactNameMSToJson(
        UpdateContactNameMS instance) =>
    <String, dynamic>{
      'contactFullName': instance.contactFullName,
    };

ReponseUpdateContactNameMS _$ReponseUpdateContactNameMSFromJson(
        Map<String, dynamic> json) =>
    ReponseUpdateContactNameMS(
      status: json['status'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ReponseUpdateContactNameMSToJson(
        ReponseUpdateContactNameMS instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
