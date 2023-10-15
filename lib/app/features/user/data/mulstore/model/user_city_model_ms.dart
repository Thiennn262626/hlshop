import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hlshop/all_file/all_file.dart';

part 'user_city_model_ms.g.dart';

@JsonSerializable()
class ListCityMS {
  List<CitiesMS>? cities;

  ListCityMS({this.cities});

  factory ListCityMS.fromJson(Map<String, dynamic> json) =>
      _$ListCityMSFromJson(json);

  Map<String, dynamic> toJson() => _$ListCityMSToJson(this);
}

@JsonSerializable()
class CitiesMS {
  String? cityID;
  String? name;

  CitiesMS({this.cityID, this.name});

  factory CitiesMS.fromJson(Map<String, dynamic> json) =>
      _$CitiesMSFromJson(json);

  Map<String, dynamic> toJson() => _$CitiesMSToJson(this);
}
