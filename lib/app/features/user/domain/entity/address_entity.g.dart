// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityEntity _$CityEntityFromJson(Map<String, dynamic> json) => CityEntity(
      id: json['id'] as String?,
      name: json['name'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      object: json['object'],
    );

Map<String, dynamic> _$CityEntityToJson(CityEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lat': instance.lat,
      'lng': instance.lng,
      'object': instance.object,
    };

DistrictEntity _$DistrictEntityFromJson(Map<String, dynamic> json) =>
    DistrictEntity(
      id: json['id'] as String?,
      name: json['name'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      object: json['object'],
      cityId: json['cityId'] as String?,
    );

Map<String, dynamic> _$DistrictEntityToJson(DistrictEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lat': instance.lat,
      'lng': instance.lng,
      'object': instance.object,
      'cityId': instance.cityId,
    };

WardEntity _$WardEntityFromJson(Map<String, dynamic> json) => WardEntity(
      id: json['id'] as String?,
      name: json['name'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
      object: json['object'],
      districtId: json['districtId'] as String?,
    );

Map<String, dynamic> _$WardEntityToJson(WardEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lat': instance.lat,
      'lng': instance.lng,
      'object': instance.object,
      'districtId': instance.districtId,
    };
