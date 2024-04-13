// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailRatingModel _$DetailRatingModelFromJson(Map<String, dynamic> json) =>
    DetailRatingModel(
      productQuality: json['product_quality'] as int?,
      sellerService: json['seller_service'] as int?,
      deliveryService: json['delivery_service'] as int?,
      driverService: json['driver_service'] as int?,
    );

Map<String, dynamic> _$DetailRatingModelToJson(DetailRatingModel instance) =>
    <String, dynamic>{
      'product_quality': instance.productQuality,
      'seller_service': instance.sellerService,
      'delivery_service': instance.deliveryService,
      'driver_service': instance.driverService,
    };
