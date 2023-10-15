import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_entities.dart';
import 'package:hlshop/app/features/user_order/presentation/detail/cubit/user_order_detail_cubit.dart';
import 'package:hlshop/app/features/user_order/presentation/detail/user_order_detail_body.dart';

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
            child: const Scaffold(
              appBar: AppAppBar(
                title: 'Chi tiết đơn hàng',
              ),
              body: UserOrderDetailBody(),
            ),
          );
        },
      ),
    );
  }
}
