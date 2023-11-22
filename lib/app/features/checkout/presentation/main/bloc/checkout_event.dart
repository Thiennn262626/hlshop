part of 'checkout_bloc.dart';

@freezed
class CheckoutEvent with _$CheckoutEvent {
  const CheckoutEvent._();

  const factory CheckoutEvent.initial() = _CheckoutInitialEvent;
  const factory CheckoutEvent.loadCheckoutData() = _LoadCheckoutDataEvent;
  const factory CheckoutEvent.loadDefaultAddress() = _LoadDefaultAddressEvent;
  const factory CheckoutEvent.updatePaymentMethod(int? paymentMethod) =
      _UpdatePaymentMethodEvent;
  const factory CheckoutEvent.createOrder() = _CreateOrderEvent;
}
