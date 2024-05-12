part of 'rating_view_cubit.dart';

@freezed
class RatingViewState with _$RatingViewState {
  const RatingViewState._();

  const factory RatingViewState({
    @Default(ApiStatus.initial()) ApiStatus status,
  }) = _ProductDetailState;
}
