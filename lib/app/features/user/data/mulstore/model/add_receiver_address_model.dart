import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/domain/entity/user_base_entity.dart';

part 'add_receiver_address_model.g.dart';
part 'address_converter.dart';

@JsonEnum(valueField: 'rawValue')
enum MsAddressType {
  home(0),
  office(1),
  other(2);

  final int rawValue;

  const MsAddressType(this.rawValue);
}

@JsonSerializable()
class AddReceiverAddressMS {
  AddReceiverAddressMS({
    this.receiverContactName,
    this.receiverPhone,
    this.receiverEmail,
    this.cityID,
    this.districtID,
    this.addressString,
    this.addressLabel,
  });

  String? receiverContactName;
  String? receiverPhone;
  String? receiverEmail;
  String? cityID;
  String? districtID;
  String? addressString;
  int? addressLabel;

  factory AddReceiverAddressMS.fromJson(Map<String, dynamic> json) =>
      _$AddReceiverAddressMSFromJson(json);

  Map<String, dynamic> toJson() => _$AddReceiverAddressMSToJson(this);

  FutureOr<UserAddressEntity>? toEntity() {
    return null;
  }
}

@JsonSerializable()
class ResponseAddReceiverAddressMS {
  ResponseAddReceiverAddressMS({this.status, this.message});
  int? status;
  String? message;

  FutureOr<AddReceiverAddressEntity>? toEntity() {
    return null;
  }

  factory ResponseAddReceiverAddressMS.fromJson(Map<String, dynamic> json) =>
      _$ResponseAddReceiverAddressMSFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseAddReceiverAddressMSToJson(this);
}
