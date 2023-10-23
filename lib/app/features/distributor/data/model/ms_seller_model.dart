import 'package:hlshop/app/common/domain/entity/common_entity.dart';
import 'package:hlshop/app/features/distributor/domain/entity/distributor_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ms_seller_model.g.dart';
part 'ms_seller_model_convert.dart';

@JsonSerializable()
class MsSellerModel {
  final String? sellerID;
  final String? businessName;
  final String? contactFullName;
  final int? userType;
  final String? linkString;

  const MsSellerModel({
    this.sellerID,
    this.businessName,
    this.contactFullName,
    this.userType,
    this.linkString,
  });

  factory MsSellerModel.fromJson(Map<String, dynamic> json) =>
      _$MsSellerModelFromJson(json);

  Map<String, dynamic> toJson() => _$MsSellerModelToJson(this);
}
