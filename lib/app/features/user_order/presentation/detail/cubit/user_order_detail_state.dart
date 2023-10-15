part of 'user_order_detail_cubit.dart';

@freezed
class UserOrderDetailState with _$UserOrderDetailState {
  const UserOrderDetailState._();

  const factory UserOrderDetailState({
    @Default(ApiStatus.initial()) ApiStatus status,
    @Default(null) OrderDataEntity? order,
    @Default(null) OrderStatusTrackingEntity? orderTrackingStatus,
  }) = _UserOrderDetailState;
}
