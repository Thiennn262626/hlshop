import 'package:hlshop/all_file/all_file.dart';

part 'rating_model.g.dart';

@JsonSerializable()
class RatingModel {
  final List<RatingItemModel>? ratings;
  final int? total;
  @JsonKey(name: 'item_rating_summary')
  final RatingSummaryModel? ratingSummary;

  const RatingModel({
    this.ratings,
    this.total,
    this.ratingSummary,
  });

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);

  Map<String, dynamic> toJson() => _$RatingModelToJson(this);
}

extension RatingModelConverter on RatingModel {
  RatingEntity toEntity() {
    return RatingEntity(
      ratingItems: ratings.mapAsList((item) => item.toEntity()),
      total: total,
      ratingSummary: ratingSummary?.toEntity(),
    );
  }
}
