// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_checkout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsCreateOrderRq _$MsCreateOrderRqFromJson(Map<String, dynamic> json) =>
    MsCreateOrderRq(
      receiverAddressID: json['receiverAddressID'] as String?,
      paymentMethod: json['paymentMethod'] as int?,
      carts: (json['carts'] as List<dynamic>?)
          ?.map((e) => Carts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MsCreateOrderRqToJson(MsCreateOrderRq instance) =>
    <String, dynamic>{
      'receiverAddressID': instance.receiverAddressID,
      'paymentMethod': instance.paymentMethod,
      'carts': instance.carts,
    };

Carts _$CartsFromJson(Map<String, dynamic> json) => Carts(
      cartID: json['cartID'] as String?,
    );

Map<String, dynamic> _$CartsToJson(Carts instance) => <String, dynamic>{
      'cartID': instance.cartID,
    };

GetOrderShippingFeeRq _$GetOrderShippingFeeRqFromJson(
        Map<String, dynamic> json) =>
    GetOrderShippingFeeRq(
      receiverAddressID: json['receiverAddressID'] as String?,
      insuranceValue: json['insuranceValue'] as String?,
    );

Map<String, dynamic> _$GetOrderShippingFeeRqToJson(
        GetOrderShippingFeeRq instance) =>
    <String, dynamic>{
      'receiverAddressID': instance.receiverAddressID,
      'insuranceValue': instance.insuranceValue,
    };

OrderShippingFee _$OrderShippingFeeFromJson(Map<String, dynamic> json) =>
    OrderShippingFee(
      shippingFee: priceUnitFromAny(json['shippingFee']),
    );

Map<String, dynamic> _$OrderShippingFeeToJson(OrderShippingFee instance) =>
    <String, dynamic>{
      'shippingFee': priceUnitToJson(instance.shippingFee),
    };

MsCreateOrderRes _$MsCreateOrderResFromJson(Map<String, dynamic> json) =>
    MsCreateOrderRes(
      message: json['message'] as String?,
      result: json['result'] == null
          ? null
          : MsCreateOrderResResult.fromJson(
              json['result'] as Map<String, dynamic>),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$MsCreateOrderResToJson(MsCreateOrderRes instance) =>
    <String, dynamic>{
      'message': instance.message,
      'result': instance.result,
      'status': instance.status,
    };

MsCreateOrderResResult _$MsCreateOrderResResultFromJson(
        Map<String, dynamic> json) =>
    MsCreateOrderResResult(
      orderIDs: json['orderIDs'] as String?,
    );

Map<String, dynamic> _$MsCreateOrderResResultToJson(
        MsCreateOrderResResult instance) =>
    <String, dynamic>{
      'orderIDs': instance.orderIDs,
    };

MSCreaQRMoMoRes _$MSCreaQRMoMoResFromJson(Map<String, dynamic> json) =>
    MSCreaQRMoMoRes(
      orderId: json['orderId'] as String?,
      createdLink: json['createdLink'] as String?,
      deeplink: json['deeplink'] as String?,
    );

Map<String, dynamic> _$MSCreaQRMoMoResToJson(MSCreaQRMoMoRes instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'createdLink': instance.createdLink,
      'deeplink': instance.deeplink,
    };
