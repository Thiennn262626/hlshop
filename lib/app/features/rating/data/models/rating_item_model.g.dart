// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatingItemModel _$RatingItemModelFromJson(Map<String, dynamic> json) =>
    RatingItemModel(
      ratingId: json['rating_id'] as String?,
      itemId: json['itemid'] as String?,
      comment: json['comment'] as String?,
      ratingStar: json['rating_star'] as int?,
      createdTime: json['ctime'] as String?,
      editable: json['editable'] as int?,
      editableDate: json['editable_date'] as String?,
      userId: json['userid'] as String?,
      authorUsername: json['author_username'] as String?,
      authorPortrait: json['author_portrait'] as String?,
      productItems: (json['product_items'] as List<dynamic>?)
          ?.map((e) => ProductItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      detailedRating: json['detailed_rating'] == null
          ? null
          : DetailRatingModel.fromJson(
              json['detailed_rating'] as Map<String, dynamic>),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      itemRatingReply: json['ItemRatingReply'] == null
          ? null
          : RatingReplyModel.fromJson(
              json['ItemRatingReply'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RatingItemModelToJson(RatingItemModel instance) =>
    <String, dynamic>{
      'rating_id': instance.ratingId,
      'itemid': instance.itemId,
      'comment': instance.comment,
      'rating_star': instance.ratingStar,
      'ctime': instance.createdTime,
      'editable': instance.editable,
      'editable_date': instance.editableDate,
      'userid': instance.userId,
      'author_username': instance.authorUsername,
      'author_portrait': instance.authorPortrait,
      'product_items': instance.productItems,
      'detailed_rating': instance.detailedRating,
      'images': instance.images,
      'ItemRatingReply': instance.itemRatingReply,
    };
