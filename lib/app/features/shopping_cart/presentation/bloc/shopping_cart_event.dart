part of 'shopping_cart_bloc.dart';

@freezed
class ShoppingCartEvent with _$ShoppingCartEvent {
  const ShoppingCartEvent._();

  const factory ShoppingCartEvent.initial() = _ShoppingCartInitialEvent;

  const factory ShoppingCartEvent.fetch() = _ShoppingCartFetchEvent;

  const factory ShoppingCartEvent.refresh() = _ShoppingCartRefeshEvent;

  const factory ShoppingCartEvent.addItem({
    required ProductEntity item,
    required int quantity,
    ProductVariantEntity? selectedVariant,
  }) = _ShoppingCartAddItemEvent;

  const factory ShoppingCartEvent.updateItem({
    required ShoppingCartItemEntity cartItem,
    required int quantity,
  }) = _ShoppingCartUpdateItemEvent;

  const factory ShoppingCartEvent.removeItem({
    required ShoppingCartItemEntity cartItem,
  }) = _ShoppingCartRemoveItemEvent;

  const factory ShoppingCartEvent.toggleItem({
    required ShoppingCartItemEntity cartItem,
    bool? selected,
  }) = _ShoppingCartToggleItemEvent;

  const factory ShoppingCartEvent.toggleSeller({
    required DistributorEntity distributorEntity,
    bool? selected,
  }) = _ShoppingCartToggleSellerEvent;
}
