import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/self.dart';
import 'package:hlshop/app/features/user_order/presentation/detail/cubit/user_order_detail_cubit.dart';
import 'package:hlshop/app/features/user_order/presentation/detail/widget/order_pay_detail.dart';
import 'package:hlshop/app/features/user_order/presentation/detail/widget/order_shipping_status_first.dart';
import 'package:hlshop/app/features/user_order/presentation/group_item/user_order_group_item.dart';
import 'package:hlshop/app/features/user_order/presentation/main/cubit/user_order_cubit.dart';

class UserOrderDetailBody extends StatelessWidget {
  const UserOrderDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserOrderDetailCubit, UserOrderDetailState>(
      builder: (context, state) {
        final item = state.order;
        final addressreceiver = item?.userAddressEntity;
        return AppScrollBody.withSpacing(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  'Mã đơn hàng: #{}'
                      .tr(args: [
                        item?.orderCode ?? '',
                      ])
                      .text
                      .titleMedium(context)
                      .make()
                      .pxDefault(),
                  const AppDivider.thin().pDefault(),
                  UserReceiveAddress(
                    address: addressreceiver ?? const UserAddressEntity(),
                  ).pxDefault().pb16(),
                ],
              ),
              const OrderShippingStatusFirst(),
              BlocProvider<UserOrderCubit>(
                create: (context) => UserOrderCubit()..fetchItemList(),
                child: UserOrderGroupItem(
                  showStatus: false,
                  orderData: item,
                  isDetail: true,
                ),
              ),
              AppTileText.semiBold(
                padding: Dimens.edge,
                title: LocaleKeys.payment_PaymentMethod.tr(),
                subtitle: _getPaymentMethodText(item?.paymentMethod ?? 0).tr(),
              ),
              OrderPaymentDetail(order: item).pyDefault(),
            ].withDivider(const AppDivider()),
          ),
        );
      },
    );
  }
}

String _getPaymentMethodText(int paymentMethod) {
  switch (paymentMethod) {
    case 0:
      return 'Thanh toán khi nhận hàng'.tr();
    case 1:
      return 'Thanh toán qua momo'.tr();
    default:
      return '';
  }
}
