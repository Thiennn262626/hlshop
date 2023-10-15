// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_shopping_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsShoppingCartAddReq _$MsShoppingCartAddReqFromJson(
        Map<String, dynamic> json) =>
    MsShoppingCartAddReq(
      productVersionID: json['productVersionID'] as String?,
      productSKUID: json['productSKUID'] as String?,
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$MsShoppingCartAddReqToJson(
        MsShoppingCartAddReq instance) =>
    <String, dynamic>{
      'productVersionID': instance.productVersionID,
      'productSKUID': instance.productSKUID,
      'quantity': instance.quantity,
    };

MsShoppingCartUpdateReq _$MsShoppingCartUpdateReqFromJson(
        Map<String, dynamic> json) =>
    MsShoppingCartUpdateReq(
      cartID: json['cartID'] as String?,
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$MsShoppingCartUpdateReqToJson(
        MsShoppingCartUpdateReq instance) =>
    <String, dynamic>{
      'cartID': instance.cartID,
      'quantity': instance.quantity,
    };

MsShoppingCart _$MsShoppingCartFromJson(Map<String, dynamic> json) =>
    MsShoppingCart(
      sellerID: json['sellerID'] as String?,
      sellerContactFullName: json['sellerContactFullName'] as String?,
      sellerBusinessName: json['sellerBusinessName'] as String?,
      dataCart: (json['dataCart'] as List<dynamic>?)
          ?.map((e) => MsProductCart.fromJson(e as Map<String, dynamic>))
          .toList(),
      countCart: json['countCart'] as int?,
    );

Map<String, dynamic> _$MsShoppingCartToJson(MsShoppingCart instance) =>
    <String, dynamic>{
      'sellerID': instance.sellerID,
      'sellerContactFullName': instance.sellerContactFullName,
      'sellerBusinessName': instance.sellerBusinessName,
      'dataCart': instance.dataCart,
      'countCart': instance.countCart,
    };

MsProductCart _$MsProductCartFromJson(Map<String, dynamic> json) =>
    MsProductCart(
      cartID: json['cartID'] as String?,
      productSKUID: json['productSKUID'] as String?,
      productID: json['productID'] as String?,
      productName: json['productName'] as String?,
      productDescription: json['productDescription'] as String?,
      medias: (json['medias'] as List<dynamic>?)
          ?.map((e) => MsMedia.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] as int?,
      price: priceUnitFromAny(json['price']),
      priceBefore: priceUnitFromAny(json['priceBefore']),
      attribute: (json['attribute'] as List<dynamic>?)
          ?.map(
              (e) => MsProductCartAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MsProductCartToJson(MsProductCart instance) =>
    <String, dynamic>{
      'productID': instance.productID,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'medias': instance.medias,
      'cartID': instance.cartID,
      'productSKUID': instance.productSKUID,
      'quantity': instance.quantity,
      'price': priceUnitToJson(instance.price),
      'priceBefore': priceUnitToJson(instance.priceBefore),
      'attribute': instance.attribute,
    };

MsProductCartAttribute _$MsProductCartAttributeFromJson(
        Map<String, dynamic> json) =>
    MsProductCartAttribute(
      localizedAttributeValueID: json['localizedAttributeValueID'] as String?,
      locAttributeValueName: json['locAttributeValueName'] as String?,
      locAttributeValueDescription:
          json['locAttributeValueDescription'] as String?,
      attributeValueID: json['attributeValueID'] as String?,
      locAttributeName: json['locAttributeName'] as String?,
      attributeID: json['attributeID'] as String?,
    );

Map<String, dynamic> _$MsProductCartAttributeToJson(
        MsProductCartAttribute instance) =>
    <String, dynamic>{
      'localizedAttributeValueID': instance.localizedAttributeValueID,
      'locAttributeValueName': instance.locAttributeValueName,
      'locAttributeValueDescription': instance.locAttributeValueDescription,
      'attributeValueID': instance.attributeValueID,
      'locAttributeName': instance.locAttributeName,
      'attributeID': instance.attributeID,
    };
