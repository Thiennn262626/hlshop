part of 'product_rating_cubit.dart';

@freezed
class ProductRatingState with _$ProductRatingState {
  const ProductRatingState._();

  const factory ProductRatingState({
    @Default(ApiStatus.initial()) ApiStatus status,
    RatingEntity? ratingEntity,
  }) = _ProductRatingState;
}
