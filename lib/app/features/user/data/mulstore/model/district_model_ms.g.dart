// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_model_ms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListDistrictMS _$ListDistrictMSFromJson(Map<String, dynamic> json) =>
    ListDistrictMS(
      districts: (json['districts'] as List<dynamic>?)
          ?.map((e) => DistrictsMS.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListDistrictMSToJson(ListDistrictMS instance) =>
    <String, dynamic>{
      'districts': instance.districts,
    };

DistrictsMS _$DistrictsMSFromJson(Map<String, dynamic> json) => DistrictsMS(
      districtID: json['districtID'] as String?,
      name: json['name'] as String?,
      cityID: json['cityID'] as String?,
    );

Map<String, dynamic> _$DistrictsMSToJson(DistrictsMS instance) =>
    <String, dynamic>{
      'districtID': instance.districtID,
      'name': instance.name,
      'cityID': instance.cityID,
    };
