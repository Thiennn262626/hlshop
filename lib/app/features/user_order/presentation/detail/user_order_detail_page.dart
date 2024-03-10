import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class UserOrderDetailPage extends StatelessWidget {
  const UserOrderDetailPage({super.key, required this.order});
  final OrderDataEntity? order;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserOrderDetailCubit(
        item: order,
      )..loadData(),
      child: Builder(
        builder: (context) {
          return ApiItemConsumer<UserOrderDetailCubit, UserOrderDetailState>(
            getStatus: (state) => state.status,
            child: OrderDetailPullRefresh(
              child: Scaffold(
                appBar: const AppAppBar(
                  title: 'Chi tiết đơn hàng',
                ),
                body: const UserOrderDetailBody(),
                bottomNavigationBar:
                    (order?.paymentMethod == 1 && order?.orderStatus == 0)
                        ? const AppBottomBar(
                            child: OrderDetailBottomBar(),
                          )
                        : null,
              ),
            ),
          );
        },
      ),
    );
  }
}
