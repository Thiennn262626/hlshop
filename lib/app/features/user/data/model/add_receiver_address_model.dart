import 'package:hlshop/all_file/all_file.dart';

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
