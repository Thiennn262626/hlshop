import 'package:hlshop/all_file/all_file.dart';

part 'delete_receiver_address_model.g.dart';

@JsonSerializable()
class DeleteReceiverAddressMS {
  DeleteReceiverAddressMS({
    this.receiverAddressID,
  });

  factory DeleteReceiverAddressMS.fromJson(Map<String, dynamic> json) =>
      _$DeleteReceiverAddressMSFromJson(json);

  String? receiverAddressID;

  Map<String, dynamic> toJson() => _$DeleteReceiverAddressMSToJson(this);

  FutureOr<UserAddressEntity>? toEntity() {
    return null;
  }
}

@JsonSerializable()
class ReponseDeleteReceiverAddressMS {
  ReponseDeleteReceiverAddressMS({this.status, this.message});

  factory ReponseDeleteReceiverAddressMS.fromJson(Map<String, dynamic> json) =>
      _$ReponseDeleteReceiverAddressMSFromJson(json);
  int? status;
  String? message;

  Map<String, dynamic> toJson() => _$ReponseDeleteReceiverAddressMSToJson(this);

  FutureOr<AddReceiverAddressEntity>? toEntity() {
    return null;
  }
}

@JsonSerializable()
class MSAddDefaultAddress {
  MSAddDefaultAddress({
    this.receiverAddressID,
  });

  factory MSAddDefaultAddress.fromJson(Map<String, dynamic> json) =>
      _$MSAddDefaultAddressFromJson(json);

  String? receiverAddressID;

  Map<String, dynamic> toJson() => _$MSAddDefaultAddressToJson(this);

  FutureOr<UserAddressEntity>? toEntity() {
    return null;
  }
}
