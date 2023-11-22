import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/checkout/self.dart';
import 'package:hlshop/app/features/shopping_cart/domain/model/shopping_cart_base_entity.dart';
import 'package:hlshop/app/features/user/self.dart';

part 'checkout_bloc.freezed.dart';
part 'checkout_event.dart';
part 'checkout_state.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc({
    List<ShoppingCartItemEntity>? cartItems,
    Set<String>? selectedCartItemIds,
  }) : super(
          CheckoutState(
            cartItems: cartItems ?? [],
            selectedCartItemIds: selectedCartItemIds ?? {},
          ),
        ) {
    on<_CheckoutInitialEvent>(_onInitial);
    on<_LoadCheckoutDataEvent>(_loadCheckoutData);
    on<_LoadDefaultAddressEvent>(_loadDefaultAddress);
    on<_UpdatePaymentMethodEvent>(_updatePaymentMethod);
    on<_CreateOrderEvent>(_createOrder);
  }

  final UserRepo userRepo = getIt();
  final CheckoutRepo _checkoutRepo = getIt();

  FutureOr<void> _onInitial(
    _CheckoutInitialEvent event,
    Emitter<CheckoutState> emit,
  ) {
    add(const CheckoutEvent.loadCheckoutData());
    add(const CheckoutEvent.loadDefaultAddress());
  }

  FutureOr<void> _createOrder(
    _CreateOrderEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          createOrderStatus: state.createOrderStatus.toPending(),
        ),
      );
      await _checkoutRepo.createOrder(
        carts: state.cartItems,
        receiverAddressID: state.userAddress?.id ?? '',
        paymentMethod: state.paymentMethod,
      );
      emit(
        state.copyWith(
          createOrderStatus: const ApiStatus.done(),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          createOrderStatus: ApiStatus.error(e.toString()),
        ),
      );
    }
  }

  FutureOr<void> _loadCheckoutData(
    _LoadCheckoutDataEvent event,
    Emitter<CheckoutState> emit,
  ) {
    //TODO(checkout): fetch data from repo later when BE has API
  }

  FutureOr<void> _loadDefaultAddress(
    _LoadDefaultAddressEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    emit(
      state.copyWith(
        loadUserDefaultAddressStatus:
            state.loadUserDefaultAddressStatus.toPending(),
      ),
    );
    try {
      final defaultAddress = await userRepo.getDefaultShippingAddress();
      emit(
        state.copyWith(
          loadUserDefaultAddressStatus: const ApiStatus.done(),
          userAddress: defaultAddress,
        ),
      );
    } catch (e) {
      log(e.toString(), error: e);
      emit(
        state.copyWith(
          loadUserDefaultAddressStatus: ApiStatus.error(e.toString()),
        ),
      );
    }
  }

  PriceUnit getTotalPrice() {
    final totalPrice = state.cartItems.fold<PriceUnit>(
      PriceUnit.zero,
      (previousValue, element) {
        return previousValue +
            (element.variant?.getPrice().timesQuantity(element.quantity) ??
                PriceUnit.zero);
      },
    );
    return totalPrice;
  }

  PriceUnit? getSellerTotalPrice() {
    final price = state.cartItems.fold<PriceUnit>(
      PriceUnit.zero,
      (previousValue, element) {
        return previousValue +
            (element.variant?.getPrice().timesQuantity(element.quantity) ??
                PriceUnit.zero);
      },
    );
    return price;
  }

  int? getSellerTotalSelectedCartItems() {
    final totalItems = state.cartItems.where(isCartItemSelected).toList();
    return totalItems.length;
  }

  bool isCartItemSelected(ShoppingCartItemEntity item) {
    return isCartItemIdSelected(item.id);
  }

  bool isCartItemIdSelected(String? id) {
    if (id == null) {
      return false;
    }
    return state.selectedCartItemIds.contains(id);
  }

  FutureOr<void> _updatePaymentMethod(
      _UpdatePaymentMethodEvent event, Emitter<CheckoutState> emit) {
    emit(
      state.copyWith(
        paymentMethod: event.paymentMethod ?? 0,
      ),
    );
  }
}
