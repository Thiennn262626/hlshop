// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_city_model_ms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCityMS _$ListCityMSFromJson(Map<String, dynamic> json) => ListCityMS(
      cities: (json['cities'] as List<dynamic>?)
          ?.map((e) => CitiesMS.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListCityMSToJson(ListCityMS instance) =>
    <String, dynamic>{
      'cities': instance.cities,
    };

CitiesMS _$CitiesMSFromJson(Map<String, dynamic> json) => CitiesMS(
      cityID: json['cityID'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CitiesMSToJson(CitiesMS instance) => <String, dynamic>{
      'cityID': instance.cityID,
      'name': instance.name,
    };
