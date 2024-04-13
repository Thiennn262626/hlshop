// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatingSummaryModel _$RatingSummaryModelFromJson(Map<String, dynamic> json) =>
    RatingSummaryModel(
      ratingTotal: json['rating_total'] as int?,
      ratingCount: (json['rating_count'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      ratingCountWithContext: json['rcount_with_context'] as int?,
      ratingCountWithImage: json['rcount_with_image'] as int?,
    );

Map<String, dynamic> _$RatingSummaryModelToJson(RatingSummaryModel instance) =>
    <String, dynamic>{
      'rating_total': instance.ratingTotal,
      'rating_count': instance.ratingCount,
      'rcount_with_context': instance.ratingCountWithContext,
      'rcount_with_image': instance.ratingCountWithImage,
    };
