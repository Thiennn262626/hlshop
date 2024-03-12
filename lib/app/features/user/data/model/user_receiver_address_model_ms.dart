import 'package:hlshop/all_file/all_file.dart';

part 'user_receiver_address_convert.dart';
part 'user_receiver_address_model_ms.g.dart';

@JsonSerializable()
class ListReceiverAddressesMS {
  ListReceiverAddressesMS({this.receiverAddresses});

  factory ListReceiverAddressesMS.fromJson(Map<String, dynamic> json) =>
      _$ListReceiverAddressesMSFromJson(json);
  List<ReceiverAddressesMS>? receiverAddresses;

  Map<String, dynamic> toJson() => _$ListReceiverAddressesMSToJson(this);

  FutureOr<UserAddressEntity> toEntity() {
    return UserAddressEntity(
      addressType: receiverAddresses?.first.addressLabel,
      city: receiverAddresses?.first.toEntity().city,
      district: receiverAddresses?.first.toEntity().district,
      ward: receiverAddresses?.first.toEntity().ward,
      fullName: receiverAddresses?.first.receiverContactName,
      fullAddress: receiverAddresses?.first.addressDetail,
      phone: receiverAddresses?.first.receiverPhone,
    );
  }
}

@JsonSerializable()
class ReceiverAddressesMS {
  ReceiverAddressesMS({
    this.receiverAddressID,
    this.districtID,
    this.cityID,
    this.districtName,
    this.cityName,
    this.wardID,
    this.wardName,
    this.addressLabel,
    this.userID,
    this.isDefault,
    this.addressString,
    this.addressDetail,
    this.receiverContactName,
    this.receiverPhone,
    this.receiverEmail,
    this.receiverEmailID,
  });

  final String? receiverAddressID;
  final String? districtID;
  final String? cityID;
  final String? districtName;
  final String? cityName;
  final String? wardID;
  final String? wardName;
  final AddressType? addressLabel;
  final String? userID;
  final int? isDefault;
  final String? addressString;
  final String? addressDetail;
  final String? receiverContactName;
  final String? receiverPhone;
  final String? receiverEmail;
  final String? receiverEmailID;

  factory ReceiverAddressesMS.fromJson(Map<String, dynamic> json) =>
      _$ReceiverAddressesMSFromJson(json);

  Map<String, dynamic> toJson() => _$ReceiverAddressesMSToJson(this);
}
