part of 'user_order_item_cubit.dart';

class UserOrderItemState extends Equatable {
  const UserOrderItemState({
    this.status = ItemStatus.initial,
    required this.item,
    this.error,
  });

  final ItemStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];

  UserOrderItemState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return UserOrderItemState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
