// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_checkout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsCreateOrderRq _$MsCreateOrderRqFromJson(Map<String, dynamic> json) =>
    MsCreateOrderRq(
      receiverAddressID: json['receiverAddressID'] as String?,
      paymentMethod: json['paymentMethod'] as int?,
      sellers: (json['sellers'] as List<dynamic>?)
          ?.map((e) => Sellers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MsCreateOrderRqToJson(MsCreateOrderRq instance) =>
    <String, dynamic>{
      'receiverAddressID': instance.receiverAddressID,
      'paymentMethod': instance.paymentMethod,
      'sellers': instance.sellers,
    };

Sellers _$SellersFromJson(Map<String, dynamic> json) => Sellers(
      sellerID: json['sellerID'] as String?,
      carts: (json['carts'] as List<dynamic>?)
          ?.map((e) => Carts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SellersToJson(Sellers instance) => <String, dynamic>{
      'sellerID': instance.sellerID,
      'carts': instance.carts,
    };

Carts _$CartsFromJson(Map<String, dynamic> json) => Carts(
      cartID: json['cartID'] as String?,
    );

Map<String, dynamic> _$CartsToJson(Carts instance) => <String, dynamic>{
      'cartID': instance.cartID,
    };
