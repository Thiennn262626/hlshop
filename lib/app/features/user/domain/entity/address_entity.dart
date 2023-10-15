import 'package:hlshop/app/features/user/domain/entity/user_base_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address_entity.g.dart';

@JsonSerializable()
class CityEntity extends AddressData {
  const CityEntity({
    super.id,
    super.name,
    super.lat,
    super.lng,
    super.object,
  });

  factory CityEntity.fromJson(Map<String, dynamic> json) =>
      _$CityEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CityEntityToJson(this);
}

@JsonSerializable()
class DistrictEntity extends AddressData {
  const DistrictEntity({
    super.id,
    super.name,
    super.lat,
    super.lng,
    super.object,
    this.cityId,
  });

  final String? cityId;

  factory DistrictEntity.fromJson(Map<String, dynamic> json) =>
      _$DistrictEntityFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictEntityToJson(this);
}
