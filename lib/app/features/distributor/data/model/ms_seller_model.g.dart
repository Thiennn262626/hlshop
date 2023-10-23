// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ms_seller_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsSellerModel _$MsSellerModelFromJson(Map<String, dynamic> json) =>
    MsSellerModel(
      sellerID: json['sellerID'] as String?,
      businessName: json['businessName'] as String?,
      contactFullName: json['contactFullName'] as String?,
      userType: json['userType'] as int?,
      linkString: json['linkString'] as String?,
    );

Map<String, dynamic> _$MsSellerModelToJson(MsSellerModel instance) =>
    <String, dynamic>{
      'sellerID': instance.sellerID,
      'businessName': instance.businessName,
      'contactFullName': instance.contactFullName,
      'userType': instance.userType,
      'linkString': instance.linkString,
    };
