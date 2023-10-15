part of 'checkout_bloc.dart';

// Load user receive address
// Load select cart item
//   -- Selected discount
//   -- Cart payment detail
// Load payment method

@freezed
class CheckoutState with _$CheckoutState {
  const CheckoutState._();

  const factory CheckoutState({
    @Default(ApiStatus.initial()) ApiStatus loadCartStatus,
    @Default([]) List<ShoppingCartItemGroupEntity> cartItemGroups,
    @Default({}) Set<String> selectedCartItemIds,
    @Default(ApiStatus.initial()) ApiStatus loadUserDefaultAddressStatus,
    UserAddressEntity? userAddress,
    PaymentMethodEntity? paymentMethod,
    @Default(ApiStatus.initial()) ApiStatus createOrderStatus,
  }) = _CheckoutState;
}
