import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/domain/entity/address_entity.dart';

part 'address_model_ms.g.dart';

@JsonSerializable()
class MsCity {
  MsCity({this.cityID, this.name});

  factory MsCity.fromJson(Map<String, dynamic> json) => _$MsCityFromJson(json);

  final String? cityID;
  final String? name;

  CityEntity toEntity() => CityEntity(
        id: cityID,
        name: name,
        object: this,
      );

  Map<String, dynamic> toJson() => _$MsCityToJson(this);
}

@JsonSerializable()
class MsCitiesResult {
  const MsCitiesResult({
    this.cities,
    this.total,
  });

  factory MsCitiesResult.fromJson(Map<String, dynamic> json) =>
      _$MsCitiesResultFromJson(json);

  final List<MsCity>? cities;
  final int? total;

  Map<String, dynamic> toJson() => _$MsCitiesResultToJson(this);
}

@JsonSerializable()
class MsDistrict {
  const MsDistrict({this.cityID, this.districtID, this.name});

  factory MsDistrict.fromJson(Map<String, dynamic> json) =>
      _$MsDistrictFromJson(json);

  final String? districtID;
  final String? name;
  final String? cityID;

  DistrictEntity toEntity() => DistrictEntity(
        id: districtID,
        name: name,
      );

  Map<String, dynamic> toJson() => _$MsDistrictToJson(this);
}

@JsonSerializable()
class MsDistrictsResult {
  const MsDistrictsResult({
    this.districts,
    this.total,
  });

  factory MsDistrictsResult.fromJson(Map<String, dynamic> json) =>
      _$MsDistrictsResultFromJson(json);

  final List<MsDistrict>? districts;
  final int? total;

  Map<String, dynamic> toJson() => _$MsDistrictsResultToJson(this);
}
