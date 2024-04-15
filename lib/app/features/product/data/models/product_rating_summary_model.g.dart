// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_rating_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRatingSummaryModel _$ProductRatingSummaryModelFromJson(
        Map<String, dynamic> json) =>
    ProductRatingSummaryModel(
      ratingAvg: (json['rating_avg'] as num?)?.toDouble(),
      ratingTotal: json['rating_total'] as int?,
      ratingCount: (json['rating_count'] as List<dynamic>?)
          ?.map((e) => e as int?)
          .toList(),
    );

Map<String, dynamic> _$ProductRatingSummaryModelToJson(
        ProductRatingSummaryModel instance) =>
    <String, dynamic>{
      'rating_avg': instance.ratingAvg,
      'rating_total': instance.ratingTotal,
      'rating_count': instance.ratingCount,
    };
