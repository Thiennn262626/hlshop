part of 'order_shipping_status_cubit.dart';

class OrderShippingStatusState extends RequestState {
  const OrderShippingStatusState({
    super.status = ItemStatus.initial,
    required this.item,
    super.error,
  });

  final dynamic item;

  @override
  List<Object?> get props => [status, item, error];

  OrderShippingStatusState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return OrderShippingStatusState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
