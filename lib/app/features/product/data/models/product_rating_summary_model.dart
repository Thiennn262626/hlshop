import 'package:hlshop/all_file/all_file.dart';part 'product_rating_summary_model.g.dart';@JsonSerializable()class ProductRatingSummaryModel {  @JsonKey(name: 'rating_avg')  final double? ratingAvg;  @JsonKey(name: 'rating_total')  final int? ratingTotal;  @JsonKey(name: 'rating_count')  final List<int>? ratingCount;  const ProductRatingSummaryModel({    this.ratingAvg,    this.ratingTotal,    this.ratingCount,  });  factory ProductRatingSummaryModel.fromJson(Map<String, dynamic> json) =>      _$ProductRatingSummaryModelFromJson(json);  Map<String, dynamic> toJson() => _$ProductRatingSummaryModelToJson(this);}extension ProductRatingSummaryModelConverter on ProductRatingSummaryModel {  ProductRatingSummary toEntity() {    return ProductRatingSummary(      average: ratingAvg,      total: ratingTotal,      count: ratingCount,    );  }}