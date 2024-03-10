import 'package:hlshop/all_file/all_file.dart';


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
