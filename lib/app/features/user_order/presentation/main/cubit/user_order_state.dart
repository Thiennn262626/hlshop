part of 'user_order_cubit.dart';

@freezed
class UserOrderState with _$UserOrderState {
  const UserOrderState._();

  const factory UserOrderState({
    @Default(ApiStatus.initial()) ApiStatus orderCountStatus,
    // @Default(null) Map<OrderStatus, List<OrderEntity>>? userOrderListMap,
    @Default(null) List<int?>? userOrderCountList,
  }) = _UserOrderState;
}
