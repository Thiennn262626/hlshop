import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/core/utils/launch_url.dart';

part 'user_order_detail_cubit.freezed.dart';
part 'user_order_detail_state.dart';

class UserOrderDetailCubit extends Cubit<UserOrderDetailState> {
  UserOrderDetailCubit({
    OrderDataEntity? item,
  }) : super(UserOrderDetailState(order: item));

  final UserOrderRepo orderRepo = getIt();
  final CheckoutRepo _checkoutRepo = getIt();

  Future<void> loadData() async {
    emit(state.copyWith(status: state.status.toPending()));

    try {
      final order = await orderRepo.getUserOrderDetail(
        id: state.order?.id,
      );
      final listOrderStatus =
          await orderRepo.getListTrackingOrder(id: state.order?.id);
      emit(state.copyWith(
        status: const ApiStatus.done(),
        order: order,
        orderTrackingStatus: listOrderStatus.first,
      ));
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }

  Future<void> payOrder() async {
    emit(state.copyWith(status: state.status.toPending()));
    try {
      final resultMomo = await _checkoutRepo.createOrderMomo(state.order?.id);
      await LaunchUrl.openUrl(Uri.parse(resultMomo?.qrMoMo ?? ''));
      emit(state.copyWith(
        status: const ApiStatus.done(),
      ));
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }

  Future<void> cancelOrder() async {
    emit(state.copyWith(status: state.status.toPending()));
    try {
      await orderRepo.updateOrderStatus(
        id: state.order?.id,
        orderStatus: OrderStatus.customerCancelled,
      );
      emit(state.copyWith(
        status: const ApiStatus.done(),
      ));
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }

  Future<void> confirmOrderSuccess() async {
    emit(state.copyWith(status: state.status.toPending()));
    try {
      await orderRepo.updateOrderStatus(
        id: state.order?.id,
        orderStatus: OrderStatus.deliverySuccess,
      );
      emit(state.copyWith(
        status: const ApiStatus.done(),
      ));
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }

  Future<void> returnOrder() async {
    emit(state.copyWith(status: state.status.toPending()));
    try {
      await orderRepo.updateOrderStatus(
        id: state.order?.id,
        orderStatus: OrderStatus.returned,
      );
      emit(state.copyWith(
        status: const ApiStatus.done(),
      ));
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }
}
