// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_order_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserOrderCountModel _$UserOrderCountModelFromJson(Map<String, dynamic> json) =>
    UserOrderCountModel(
      countNew: json['countNew'] as int?,
      countApproved: json['countApproved'] as int?,
      countPacking: json['countPacking'] as int?,
      countOnDelivering: json['countOnDelivering'] as int?,
      countDeliverySuccess: json['countDeliverySuccess'] as int?,
      countCustomerCancelled: json['countCustomerCancelled'] as int?,
      countSellerCancelled: json['countSellerCancelled'] as int?,
      countReturned: json['countReturned'] as int?,
      countCancel: json['countCancel'] as int?,
    );

Map<String, dynamic> _$UserOrderCountModelToJson(
        UserOrderCountModel instance) =>
    <String, dynamic>{
      'countNew': instance.countNew,
      'countApproved': instance.countApproved,
      'countPacking': instance.countPacking,
      'countOnDelivering': instance.countOnDelivering,
      'countDeliverySuccess': instance.countDeliverySuccess,
      'countCustomerCancelled': instance.countCustomerCancelled,
      'countSellerCancelled': instance.countSellerCancelled,
      'countReturned': instance.countReturned,
      'countCancel': instance.countCancel,
    };
