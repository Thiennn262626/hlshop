import 'package:hlshop/app/features/product/data/models/product_item_model.dart';import 'package:hlshop/app/features/rating/data/models/detail_rating_model.dart';import 'package:hlshop/app/features/rating/data/models/index.dart';import 'package:json_annotation/json_annotation.dart';part 'rating_item_model.g.dart';@JsonSerializable()class RatingItemModel {  @JsonKey(name: 'rating_id')  final String? ratingId;  @JsonKey(name: 'itemid')  final String? itemId;  final String? comment;  @JsonKey(name: 'rating_star')  final int? ratingStar;  @JsonKey(name: 'ctime')  final String? createdTime;  final int? editable;  @JsonKey(name: 'editable_date')  final String? editableDate;  @JsonKey(name: 'userid')  final String? userId;  @JsonKey(name: 'author_username')  final String? authorUsername;  @JsonKey(name: 'author_portrait')  final String? authorPortrait;  @JsonKey(name: 'product_items')  final List<ProductItemModel>? productItems;  @JsonKey(name: 'detailed_rating')  final DetailRatingModel? detailedRating;  final List<String>? images;  @JsonKey(name: 'ItemRatingReply')  final RatingReplyModel? itemRatingReply;  const RatingItemModel({    this.ratingId,    this.itemId,    this.comment,    this.ratingStar,    this.createdTime,    this.editable,    this.editableDate,    this.userId,    this.authorUsername,    this.authorPortrait,    this.productItems,    this.detailedRating,    this.images,    this.itemRatingReply,  });  factory RatingItemModel.fromJson(Map<String, dynamic> json) =>      _$RatingItemModelFromJson(json);  Map<String, dynamic> toJson() => _$RatingItemModelToJson(this);}