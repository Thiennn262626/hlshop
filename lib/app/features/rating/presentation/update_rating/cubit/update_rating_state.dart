part of 'update_rating_cubit.dart';

@freezed
class UpdateRatingState with _$UpdateRatingState {
  const UpdateRatingState._();

  const factory UpdateRatingState({
    @Default(ApiStatus.initial()) ApiStatus status,
    @Default(ApiStatus.initial()) ApiStatus uploadImageStatus,
    required List<ImageEntity> images,
    required num providerServiceRating,
    required num deliveryServiceRating,
    required num shipperServiceRating,
    required num productRating,
  }) = _ProductDetailState;
}
