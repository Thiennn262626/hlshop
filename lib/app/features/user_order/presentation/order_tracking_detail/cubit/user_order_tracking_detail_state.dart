part of 'user_order_tracking_detail_cubit.dart';

@freezed
class UserOrderTrackingDetailState with _$UserOrderTrackingDetailState {
  const UserOrderTrackingDetailState._();

  const factory UserOrderTrackingDetailState({
    @Default(ApiStatus.initial()) ApiStatus status,
    @Default('') String? orderId,
    @Default([]) List<OrderStatusTrackingEntity> listOrderStatus,
  }) = _UserOrderTrackingDetailState;
}
