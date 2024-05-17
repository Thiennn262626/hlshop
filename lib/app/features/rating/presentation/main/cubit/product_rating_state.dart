part of 'product_rating_cubit.dart';

@freezed
class ProductRatingState with _$ProductRatingState {
  const ProductRatingState._();

  const factory ProductRatingState({
    @Default(ApiStatus.initial()) ApiStatus status,
    @Default(RatingFilterType.all) RatingFilterType ratingType,
    RatingEntity? ratingEntity,
    int? star,
  }) = _ProductRatingState;
}
