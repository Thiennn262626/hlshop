part of 'update_rating_cubit.dart';

@freezed
class UpdateRatingState with _$UpdateRatingState {
  const UpdateRatingState._();

  const factory UpdateRatingState({
    @Default(ApiStatus.initial()) ApiStatus status,
  }) = _ProductDetailState;
}
