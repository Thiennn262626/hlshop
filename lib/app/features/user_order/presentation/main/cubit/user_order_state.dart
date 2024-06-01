part of 'user_order_cubit.dart';

@freezed
class UserOrderState with _$UserOrderState {
  const UserOrderState._();

  const factory UserOrderState({
    @Default(ApiStatus.initial()) ApiStatus orderCountStatus,
    @Default(ApiStatus.initial()) ApiStatus orderListStatus,
    // @Default(null) Map<OrderStatus, List<OrderEntity>>? userOrderListMap,
    @Default([]) List<OrderEntity> userOrderList,
    @Default(null) OrderStatus? orderStatus,
    @Default(null) List<int?>? userOrderCountList,
  }) = _UserOrderState;
}
