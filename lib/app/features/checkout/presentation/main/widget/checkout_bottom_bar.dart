import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/checkout/presentation/main/bloc/checkout_bloc.dart';

class CheckoutBottomBar extends StatelessWidget {
  const CheckoutBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isPay = false;
    return Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            'Tổng thanh toán:'.tr().text.make(),
            BlocBuilder<CheckoutBloc, CheckoutState>(
              builder: (context, state) {
                return AppPrice(
                  price: context.read<CheckoutBloc>().getTotalPrice(),
                );
              },
            ),
          ].withDivider(Gaps.vGap4),
        ).expand(),
        BlocBuilder<CheckoutBloc, CheckoutState>(
          builder: (context, state) => AppButton(
            style: AppButtonTheme.primary(context).big(context),
            label: isPay ? 'Thanh toán'.tr() : 'Đặt hàng'.tr(),
            onPressed: () async {
              if (state.userAddress.isNotNullOrEmpty) {
                context.read<CheckoutBloc>().add(
                      const CheckoutEvent.createOrder(),
                    );
              } else {
                await DialogUtils.showErrorDialog(
                    context: context,
                    content: 'Vui lòng chọn địa chỉ nhận hàng'.tr());
              }
            },
          ),
        ),
      ],
    );
  }
}
