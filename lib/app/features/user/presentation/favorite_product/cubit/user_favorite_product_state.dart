part of 'user_favorite_product_cubit.dart';

@freezed
class UserFavoriteProductState with _$UserFavoriteProductState {
  const UserFavoriteProductState._();

  const factory UserFavoriteProductState({
    @Default(ApiStatus.initial()) ApiStatus status,
    @Default([]) List<ProductEntity> products,
    // @Default(null) Object? item,
  }) = _ProductDetailState;
}
