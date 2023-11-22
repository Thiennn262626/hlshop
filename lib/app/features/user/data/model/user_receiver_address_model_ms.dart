import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/domain/entity/address_entity.dart';
import 'package:hlshop/app/features/user/domain/entity/user_base_entity.dart';

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
  });

  String? receiverAddressID;
  String? districtID;
  String? cityID;
  String? districtName;
  String? cityName;
  String? wardID;
  String? wardName;
  AddressType? addressLabel;
  String? userID;
  int? isDefault;
  String? addressString;
  String? addressDetail;
  String? receiverContactName;
  String? receiverPhone;
  String? receiverEmail;

  factory ReceiverAddressesMS.fromJson(Map<String, dynamic> json) =>
      _$ReceiverAddressesMSFromJson(json);

  Map<String, dynamic> toJson() => _$ReceiverAddressesMSToJson(this);
}
