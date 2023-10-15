import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_entities.dart';
import 'package:hlshop/app/features/user_order/presentation/order_tracking_detail/cubit/user_order_tracking_detail_cubit.dart';
import 'package:hlshop/app/features/user_order/presentation/order_tracking_detail/user_order_tracking_detail_body.dart';

@RoutePage()
class UserOrderTrackingDetailPage extends StatelessWidget {
  const UserOrderTrackingDetailPage({super.key, required this.order});
  final OrderDataEntity? order;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UserOrderTrackingDetailCubit(oderId: order?.id)..loadData(),
      child: Builder(
        builder: (context) {
          return const Scaffold(
            appBar: AppAppBar(
              title: 'Thông tin vận chuyển',
            ),
            body: UserOrderTrackingDetailBody(),
          );
        },
      ),
    );
  }
}
