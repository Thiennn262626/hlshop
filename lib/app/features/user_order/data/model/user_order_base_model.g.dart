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
      json['sellerID'] as String?,
      json['sellerContactFullName'] as String?,
      json['sellerBusinessName'] as String?,
      json['orderCode'] as String?,
      json['orderID'] as String?,
      json['paymentMethod'] as int?,
      $enumDecodeNullable(_$MsOrderStatusEnumMap, json['orderStatus']),
      json['receiverAddresse'] == null
          ? null
          : ReceiverAddresse.fromJson(
              json['receiverAddresse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MsOderGroupDataToJson(MsOderGroupData instance) =>
    <String, dynamic>{
      'sellerID': instance.sellerID,
      'sellerContactFullName': instance.sellerContactFullName,
      'sellerBusinessName': instance.sellerBusinessName,
      'dataOrderItem': instance.dataOrderItem,
      'orderCode': instance.orderCode,
      'orderID': instance.orderID,
      'paymentMethod': instance.paymentMethod,
      'orderStatus': _$MsOrderStatusEnumMap[instance.orderStatus],
      'receiverAddresse': instance.receiverAddresse,
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

ReceiverAddresse _$ReceiverAddresseFromJson(Map<String, dynamic> json) =>
    ReceiverAddresse(
      json['receiverAddressID'] as String?,
      json['receiverContactName'] as String?,
      json['receiverPhone'] as String?,
      json['receiverEmail'] as String?,
      json['districtID'] as String?,
      json['cityID'] as String?,
      json['addressLabel'] as int?,
      json['userID'] as String?,
      json['addressString'] as String?,
      json['isDefault'] as int?,
      json['cityName'] as String?,
      json['districtName'] as String?,
    );

Map<String, dynamic> _$ReceiverAddresseToJson(ReceiverAddresse instance) =>
    <String, dynamic>{
      'receiverAddressID': instance.receiverAddressID,
      'receiverContactName': instance.receiverContactName,
      'receiverPhone': instance.receiverPhone,
      'receiverEmail': instance.receiverEmail,
      'districtID': instance.districtID,
      'cityID': instance.cityID,
      'addressLabel': instance.addressLabel,
      'userID': instance.userID,
      'addressString': instance.addressString,
      'isDefault': instance.isDefault,
      'cityName': instance.cityName,
      'districtName': instance.districtName,
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
