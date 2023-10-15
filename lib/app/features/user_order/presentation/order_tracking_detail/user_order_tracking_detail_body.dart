import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user_order/presentation/order_tracking_detail/cubit/user_order_tracking_detail_cubit.dart';
import 'package:hlshop/app/features/user_order/presentation/order_tracking_detail/widget/order_shipping_status_body.dart';

class UserOrderTrackingDetailBody extends StatelessWidget {
  const UserOrderTrackingDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserOrderTrackingDetailCubit,
        UserOrderTrackingDetailState>(
      builder: (context, state) {
        final orderStatus = state.listOrderStatus;
        return ShippingTimeLine(
          orderStatus: orderStatus,
        ).pDefault();
      },
    );
  }
}
