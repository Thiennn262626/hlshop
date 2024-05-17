// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_order_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatingOrderReqModel _$RatingOrderReqModelFromJson(Map<String, dynamic> json) =>
    RatingOrderReqModel(
      orderId: json['order_id'] as String?,
      orderItems: (json['order_items'] as List<dynamic>?)
          ?.map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RatingOrderReqModelToJson(
        RatingOrderReqModel instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'order_items': instance.orderItems,
    };

OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    OrderItemModel(
      orderItemId: json['order_item_id'] as String?,
      comment: json['comment'] as String?,
      detailedRating: json['detailed_rating'] == null
          ? null
          : DetailedRatingModel.fromJson(
              json['detailed_rating'] as Map<String, dynamic>),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$OrderItemModelToJson(OrderItemModel instance) =>
    <String, dynamic>{
      'order_item_id': instance.orderItemId,
      'comment': instance.comment,
      'detailed_rating': instance.detailedRating,
      'images': instance.images,
    };

DetailedRatingModel _$DetailedRatingModelFromJson(Map<String, dynamic> json) =>
    DetailedRatingModel(
      productQuality: json['product_quality'] as int?,
      sellerService: json['seller_service'] as int?,
      deliveryService: json['delivery_service'] as int?,
      driverService: json['driver_service'] as int?,
    );

Map<String, dynamic> _$DetailedRatingModelToJson(
        DetailedRatingModel instance) =>
    <String, dynamic>{
      'product_quality': instance.productQuality,
      'seller_service': instance.sellerService,
      'delivery_service': instance.deliveryService,
      'driver_service': instance.driverService,
    };
