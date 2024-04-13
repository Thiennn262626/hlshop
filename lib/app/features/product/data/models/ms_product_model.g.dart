// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ms_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsProduct _$MsProductFromJson(Map<String, dynamic> json) => MsProduct(
      productID: json['productID'] as String?,
      localizedProductID: json['localizedProductID'] as String?,
      productName: json['productName'] as String?,
      productDescription: json['productDescription'] as String?,
      productNotes: json['productNotes'] as String?,
      productSlogan: json['productSlogan'] as String?,
      productMadeIn: json['productMadeIn'] as String?,
      productUses: json['productUses'] as String?,
      productIngredient: json['productIngredient'] as String?,
      productObjectsOfUse: json['productObjectsOfUse'] as String?,
      productPreserve: json['productPreserve'] as String?,
      productInstructionsForUse: json['productInstructionsForUse'] as String?,
      productHeight: json['productHeight'] as int?,
      productWidth: json['productWidth'] as int?,
      productLength: json['productLength'] as int?,
      productWeight: json['productWeight'] as int?,
      medias: (json['medias'] as List<dynamic>?)
          ?.map((e) => MsMedia.fromJson(e as Map<String, dynamic>))
          .toList(),
      productCategory: json['productCategory'] == null
          ? null
          : MsProductCategory.fromJson(
              json['productCategory'] as Map<String, dynamic>),
      seller: json['seller'] == null
          ? null
          : MsSellerModel.fromJson(json['seller'] as Map<String, dynamic>),
      productSKU: (json['productSKU'] as List<dynamic>?)
          ?.map((e) => MsProductSku.fromJson(e as Map<String, dynamic>))
          .toList(),
      localizedProductVersionID: json['localizedProductVersionID'] as String?,
    );

Map<String, dynamic> _$MsProductToJson(MsProduct instance) => <String, dynamic>{
      'productID': instance.productID,
      'localizedProductID': instance.localizedProductID,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'productNotes': instance.productNotes,
      'productSlogan': instance.productSlogan,
      'productMadeIn': instance.productMadeIn,
      'productUses': instance.productUses,
      'productIngredient': instance.productIngredient,
      'productObjectsOfUse': instance.productObjectsOfUse,
      'productPreserve': instance.productPreserve,
      'productInstructionsForUse': instance.productInstructionsForUse,
      'productHeight': instance.productHeight,
      'productWidth': instance.productWidth,
      'productLength': instance.productLength,
      'productWeight': instance.productWeight,
      'medias': instance.medias,
      'productCategory': instance.productCategory,
      'seller': instance.seller,
      'productSKU': instance.productSKU,
      'localizedProductVersionID': instance.localizedProductVersionID,
    };
