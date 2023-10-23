import 'package:hlshop/all_file/all_file.dart';

part 'user_order_count_model.g.dart';

@JsonSerializable()
class UserOrderCountModel {
  UserOrderCountModel({
    this.countNew,
    this.countApproved,
    this.countPacking,
    this.countOnDelivering,
    this.countDeliverySuccess,
    this.countCustomerCancelled,
    this.countSellerCancelled,
    this.countReturned,
    this.countCancel,
  });

  factory UserOrderCountModel.fromJson(Map<String, dynamic> json) =>
      _$UserOrderCountModelFromJson(json);
  int? countNew;
  int? countApproved;
  int? countPacking;
  int? countOnDelivering;
  int? countDeliverySuccess;
  int? countCustomerCancelled;
  int? countSellerCancelled;
  int? countReturned;
  int? countCancel;

  Map<String, dynamic> toJson() => _$UserOrderCountModelToJson(this);
}
