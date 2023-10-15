// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ms_product_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsProductCategory _$MsProductCategoryFromJson(Map<String, dynamic> json) =>
    MsProductCategory(
      productCategoryID: json['productCategoryID'] as String?,
      productCategoryName: json['productCategoryName'] as String?,
      linkString: json['linkString'] as String?,
    );

Map<String, dynamic> _$MsProductCategoryToJson(MsProductCategory instance) =>
    <String, dynamic>{
      'productCategoryID': instance.productCategoryID,
      'productCategoryName': instance.productCategoryName,
      'linkString': instance.linkString,
    };
