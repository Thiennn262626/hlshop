import 'package:hlshop/all_file/all_file.dart';

part 'district_model_ms.g.dart';

@JsonSerializable()
class ListDistrictMS {
  List<DistrictsMS>? districts;

  ListDistrictMS({this.districts});

  factory ListDistrictMS.fromJson(Map<String, dynamic> json) =>
      _$ListDistrictMSFromJson(json);

  Map<String, dynamic> toJson() => _$ListDistrictMSToJson(this);
}

@JsonSerializable()
class DistrictsMS {
  String? districtID;
  String? name;
  String? cityID;

  DistrictsMS({this.districtID, this.name, this.cityID});

  factory DistrictsMS.fromJson(Map<String, dynamic> json) =>
      _$DistrictsMSFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictsMSToJson(this);
}
