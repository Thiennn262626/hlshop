import 'package:hlshop/all_file/all_file.dart';

part 'user_order_tracking_detail_cubit.freezed.dart';
part 'user_order_tracking_detail_state.dart';

class UserOrderTrackingDetailCubit extends Cubit<UserOrderTrackingDetailState> {
  UserOrderTrackingDetailCubit({
    String? oderId,
  }) : super(UserOrderTrackingDetailState(orderId: oderId));

  final UserOrderRepo orderRepo = getIt();
  Future<void> loadData() async {
    emit(state.copyWith(status: state.status.toPending()));
    try {
      final listOrderStatus =
          await orderRepo.getListTrackingOrder(id: state.orderId);
      emit(state.copyWith(
        status: const ApiStatus.done(),
        listOrderStatus: listOrderStatus,
      ));
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }
}
