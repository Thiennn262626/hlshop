import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/domain/entity/user_base_entity.dart';

part 'update_receiver_address_model.g.dart';

@JsonSerializable()
class UpdateReceiverAddressMS {
  UpdateReceiverAddressMS({
    this.receiverAddressID,
    this.receiverContactName,
    this.receiverPhone,
    this.receiverEmailID,
    this.cityName,
    this.cityID,
    this.districtName,
    this.districtID,
    this.wardName,
    this.wardID,
    this.addressDetail,
    this.addressLabel,
  });

  factory UpdateReceiverAddressMS.fromJson(Map<String, dynamic> json) =>
      _$UpdateReceiverAddressMSFromJson(json);

  String? receiverAddressID;
  String? receiverContactName;
  String? receiverPhone;
  String? receiverEmailID;
  String? cityName;
  String? cityID;
  String? districtName;
  String? districtID;
  String? wardName;
  String? wardID;
  String? addressDetail;
  int? addressLabel;

  Map<String, dynamic> toJson() => _$UpdateReceiverAddressMSToJson(this);

  FutureOr<UserAddressEntity>? toEntity() {
    return null;
  }
}

@JsonSerializable()
class ReponseUpdateReceiverAddressMS {
  ReponseUpdateReceiverAddressMS({this.status, this.message});

  factory ReponseUpdateReceiverAddressMS.fromJson(Map<String, dynamic> json) =>
      _$ReponseUpdateReceiverAddressMSFromJson(json);
  int? status;
  String? message;

  Map<String, dynamic> toJson() => _$ReponseUpdateReceiverAddressMSToJson(this);

  FutureOr<AddReceiverAddressEntity>? toEntity() {
    return null;
  }
}
