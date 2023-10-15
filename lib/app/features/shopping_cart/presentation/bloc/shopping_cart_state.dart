part of 'shopping_cart_bloc.dart';

@freezed
class ShoppingCartState with _$ShoppingCartState {
  const ShoppingCartState._();

  const factory ShoppingCartState({
    @Default(ApiStatus.initial()) ApiStatus status,
    @Default(ApiStatus.initial()) ApiStatus itemStatus,
    @Default([]) List<ShoppingCartItemGroupEntity> itemGroups,
    @Default({}) Set<String> selectedCartItemIds,
  }) = _ShoppingCartState;
}
