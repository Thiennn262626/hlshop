// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatingModel _$RatingModelFromJson(Map<String, dynamic> json) => RatingModel(
      ratings: (json['ratings'] as List<dynamic>?)
          ?.map((e) => RatingItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      ratingSummary: json['item_rating_summary'] == null
          ? null
          : RatingSummaryModel.fromJson(
              json['item_rating_summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RatingModelToJson(RatingModel instance) =>
    <String, dynamic>{
      'ratings': instance.ratings,
      'total': instance.total,
      'item_rating_summary': instance.ratingSummary,
    };
