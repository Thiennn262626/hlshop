import 'package:hlshop/all_file/all_file.dart';

part 'user_order_cubit.freezed.dart';

part 'user_order_state.dart';

class UserOrderCubit extends Cubit<UserOrderState> {
  UserOrderCubit({
    required this.tabController,
  }) : super(const UserOrderState()) {
    controllerMap = Map.fromEntries(
      OrderStatus.values.map(
        (orderStatus) => MapEntry(
          orderStatus,
          AppPagingController<int, OrderEntity>(firstPageKey: 0),
        ),
      ),
    );
    controllerMap.forEach((key, value) {
      value.addPageRequestListener((pageKey) {
        fetchStatus();
      });
    });

    tabController.addListener(_tabAnimationListener);
  }

  final orderRepo = getIt<UserOrderRepo>();
  late final Map<OrderStatus, AppPagingController<int, OrderEntity>>
      controllerMap;
  final TabController tabController;

  @override
  Future<void> close() async {
    controllerMap.forEach((key, value) {
      value.dispose();
    });
    tabController.dispose();
    await super.close();
  }

  void clearController() {
    controllerMap.forEach((key, value) {
      value.refresh();
    });
  }

  void _tabAnimationListener() {
    getStatus(orderStatus: OrderStatus.values[tabController.index]);
  }

  FutureOr<void> getStatus({
    required OrderStatus orderStatus,
  }) {
    emit(state.copyWith(orderStatus: orderStatus));
  }

  void refreshSilent() {
    Future.delayed(300.milliseconds, () {
      controllerMap[state.orderStatus]?.refreshSilent(limit: 20);
      fetchStatus();
    });
  }

  void fetchItemList() {
    controllerMap.forEach((key, value) {
      value.refresh();
    });
  }

  FutureOr<void> fetchStatus() async {
    if (!getIt<AuthBloc>().isLogin) {
      emit(
        state.copyWith(
          orderCountStatus: const ApiStatus.initial(),
          userOrderCountList: [],
        ),
      );
      return;
    }
    if (state.orderCountStatus.isPending) {
      return;
    }
    //emit(state.copyWith(orderCountStatus: state.orderCountStatus.toPending()));
    try {
      final count = await orderRepo.getListCountOrder();
      final countItem = addListCount(count);
      fetchListChangeStatus(
        oldCountItem: state.userOrderCountList ?? [],
        newCountItem: countItem,
      );
      emit(
        state.copyWith(
          orderCountStatus: const ApiStatus.done(),
          userOrderCountList: countItem,
        ),
      );
    } catch (e) {
      log(e.toString(), error: e);
      emit(
        state.copyWith(
          orderCountStatus: ApiStatus.error(e),
        ),
      );
    }
  }

  List<int?> addListCount(UserOrderCountModel? count) {
    final countItem = <int?>[]
      ..add(count?.countNew)
      ..add(count?.countApproved)
      ..add(count?.countPacking)
      ..add(count?.countOnDelivering)
      ..add(count?.countDeliverySuccess)
      ..add(count?.countCustomerCancelled)
      ..add(count?.countSellerCancelled)
      ..add(count?.countReturned);

    return countItem;
  }

  void fetchListChangeStatus(
      {required List<int?> oldCountItem, required List<int?> newCountItem}) {
    if (oldCountItem.length != newCountItem.length) {
      return;
    }
    final listChangeStatus = <int>[];
    for (var i = 0; i < oldCountItem.length; i++) {
      if (oldCountItem[i] != newCountItem[i]) {
        listChangeStatus.add(i);
      }
    }
    print('listChangeStatus $listChangeStatus');
    for (final index in listChangeStatus) {
      controllerMap[OrderStatus.values[index]]!.refresh();
    }
  }
}
