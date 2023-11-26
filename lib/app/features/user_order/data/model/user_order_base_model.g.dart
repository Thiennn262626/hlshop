// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_order_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsOrder _$MsOrderFromJson(Map<String, dynamic> json) => MsOrder(
      listOrderItem: (json['listOrderItem'] as List<dynamic>?)
          ?.map((e) => MsOderGroupData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MsOrderToJson(MsOrder instance) => <String, dynamic>{
      'listOrderItem': instance.listOrderItem,
    };

MsOderGroupData _$MsOderGroupDataFromJson(Map<String, dynamic> json) =>
    MsOderGroupData(
      (json['dataOrderItem'] as List<dynamic>?)
          ?.map((e) => MsOrderProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['orderCode'] as String?,
      json['orderID'] as String?,
      json['paymentMethod'] as int?,
      $enumDecodeNullable(_$MsOrderStatusEnumMap, json['orderStatus']),
      json['receiverAddresse'] == null
          ? null
          : ReceiverAddressesMS.fromJson(
              json['receiverAddresse'] as Map<String, dynamic>),
      json['orderShippingFee'] == null
          ? null
          : OrderShippingFee.fromJson(
              json['orderShippingFee'] as Map<String, dynamic>),
      json['finishPay'] as bool?,
    );

Map<String, dynamic> _$MsOderGroupDataToJson(MsOderGroupData instance) =>
    <String, dynamic>{
      'dataOrderItem': instance.dataOrderItem,
      'orderCode': instance.orderCode,
      'orderID': instance.orderID,
      'paymentMethod': instance.paymentMethod,
      'orderStatus': _$MsOrderStatusEnumMap[instance.orderStatus],
      'receiverAddresse': instance.receiverAddresse,
      'orderShippingFee': instance.orderShippingFee,
      'finishPay': instance.finishPay,
    };

const _$MsOrderStatusEnumMap = {
  MsOrderStatus.newOrder: 0,
  MsOrderStatus.approved: 1,
  MsOrderStatus.packing: 2,
  MsOrderStatus.onDelivering: 3,
  MsOrderStatus.deliverySuccess: 4,
  MsOrderStatus.customerCancelled: 5,
  MsOrderStatus.sellerCancelled: 6,
  MsOrderStatus.returned: 7,
};

MsOrderProduct _$MsOrderProductFromJson(Map<String, dynamic> json) =>
    MsOrderProduct(
      json['orderItemID'] as String?,
      json['productID'] as String?,
      json['productName'] as String?,
      json['productDescription'] as String?,
      json['productSKUID'] as String?,
      (json['medias'] as List<dynamic>?)
          ?.map((e) => MsMedia.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['quantity'] as int?,
      priceUnitFromAny(json['price']),
      priceUnitFromAny(json['priceBefore']),
      (json['attribute'] as List<dynamic>?)
          ?.map(
              (e) => MsProductCartAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MsOrderProductToJson(MsOrderProduct instance) =>
    <String, dynamic>{
      'orderItemID': instance.orderItemID,
      'productID': instance.productID,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'productSKUID': instance.productSKUID,
      'medias': instance.medias,
      'quantity': instance.quantity,
      'price': priceUnitToJson(instance.price),
      'priceBefore': priceUnitToJson(instance.priceBefore),
      'attribute': instance.attribute,
    };

MsOrderTracking _$MsOrderTrackingFromJson(Map<String, dynamic> json) =>
    MsOrderTracking(
      json['orderStatusTrackingID'] as String?,
      json['orderID'] as String?,
      json['orderStatus'] as int?,
      json['actionDate'] as String?,
    );

Map<String, dynamic> _$MsOrderTrackingToJson(MsOrderTracking instance) =>
    <String, dynamic>{
      'orderStatusTrackingID': instance.orderStatusTrackingID,
      'orderID': instance.orderID,
      'orderStatus': instance.orderStatus,
      'actionDate': instance.actionDate,
    };
