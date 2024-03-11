import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user_order/presentation/detail/cubit/user_order_detail_cubit.dart';

class OrderDetailBottomBar extends StatelessWidget {
  const OrderDetailBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            'Tổng thanh toán:'.tr().text.make(),
            BlocBuilder<UserOrderDetailCubit, UserOrderDetailState>(
              builder: (context, state) {
                return AppPrice(
                  price: state.order?.totalPriceOrder,
                );
              },
            ),
          ].withDivider(Gaps.vGap4),
        ).expand(),
        BlocBuilder<UserOrderDetailCubit, UserOrderDetailState>(
          builder: (context, state) {
            final finishPay = state.order?.finishPay;
            return AppButton(
              style: AppButtonTheme.primary(context),
              label:
                  finishPay ?? true ? 'Đã thanh toán'.tr() : 'Thanh toán'.tr(),
              onPressed: finishPay ?? true
                  ? null
                  : () {
                      context.read<UserOrderDetailCubit>().payOrder();
                    },
            );
          },
        ),
      ],
    );
  }
}
