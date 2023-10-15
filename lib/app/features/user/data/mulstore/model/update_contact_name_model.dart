import 'package:hlshop/all_file/all_file.dart';

part 'update_contact_name_model.g.dart';

@JsonSerializable()
class UpdateContactNameMS {
  UpdateContactNameMS({
    this.contactFullName,
  });

  factory UpdateContactNameMS.fromJson(Map<String, dynamic> json) =>
      _$UpdateContactNameMSFromJson(json);

  String? contactFullName;

  Map<String, dynamic> toJson() => _$UpdateContactNameMSToJson(this);
}

@JsonSerializable()
class ReponseUpdateContactNameMS {
  ReponseUpdateContactNameMS({this.status, this.message});

  factory ReponseUpdateContactNameMS.fromJson(Map<String, dynamic> json) =>
      _$ReponseUpdateContactNameMSFromJson(json);
  int? status;
  String? message;

  Map<String, dynamic> toJson() => _$ReponseUpdateContactNameMSToJson(this);

  // FutureOr<AddReceiverAddressEntity>? toEntity() {
  //   return null;
  // }
}
