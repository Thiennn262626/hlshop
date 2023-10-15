// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model_ms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsCity _$MsCityFromJson(Map<String, dynamic> json) => MsCity(
      cityID: json['cityID'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$MsCityToJson(MsCity instance) => <String, dynamic>{
      'cityID': instance.cityID,
      'name': instance.name,
    };

MsCitiesResult _$MsCitiesResultFromJson(Map<String, dynamic> json) =>
    MsCitiesResult(
      cities: (json['cities'] as List<dynamic>?)
          ?.map((e) => MsCity.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$MsCitiesResultToJson(MsCitiesResult instance) =>
    <String, dynamic>{
      'cities': instance.cities,
      'total': instance.total,
    };

MsDistrict _$MsDistrictFromJson(Map<String, dynamic> json) => MsDistrict(
      cityID: json['cityID'] as String?,
      districtID: json['districtID'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$MsDistrictToJson(MsDistrict instance) =>
    <String, dynamic>{
      'districtID': instance.districtID,
      'name': instance.name,
      'cityID': instance.cityID,
    };

MsDistrictsResult _$MsDistrictsResultFromJson(Map<String, dynamic> json) =>
    MsDistrictsResult(
      districts: (json['districts'] as List<dynamic>?)
          ?.map((e) => MsDistrict.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$MsDistrictsResultToJson(MsDistrictsResult instance) =>
    <String, dynamic>{
      'districts': instance.districts,
      'total': instance.total,
    };
