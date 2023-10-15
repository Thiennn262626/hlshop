import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_entities.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_status_tracking_entity.dart';
import 'package:hlshop/app/features/user_order/domain/repo/user_order_repo.dart';

part 'user_order_detail_cubit.freezed.dart';
part 'user_order_detail_state.dart';

class UserOrderDetailCubit extends Cubit<UserOrderDetailState> {
  UserOrderDetailCubit({
    OrderDataEntity? item,
  }) : super(UserOrderDetailState(order: item));

  final UserOrderRepo orderRepo = getIt();

  Future<void> loadData() async {
    emit(state.copyWith(status: state.status.toPending()));

    try {
      final order = await orderRepo.getUserOrderDetail(
        id: state.order?.id,
      );
      final List<OrderStatusTrackingEntity> listOrderStatus =
          await orderRepo.getListTrackingOrder(id: state.order?.id);

      emit(state.copyWith(
        status: ApiStatus.done(),
        order: order,
        orderTrackingStatus: listOrderStatus.first,
      ));
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }
}
