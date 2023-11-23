import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/checkout/presentation/main/bloc/checkout_bloc.dart';

class CheckoutPaymentDetail extends StatelessWidget {
  const CheckoutPaymentDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Chi tiết thanh toán'.tr(),
        ),
        const AppDivider.thin().pDefault(),
        BlocBuilder<CheckoutBloc, CheckoutState>(
          builder: (context, state) {
            return AppKeyValueList(
              keyTextBuilder: (context, item) => '$item:'.text.textS.make(),
              valueTextBuilder: (context, item) =>
                  item.text.textS.colorDarkest(context).make(),
              children: [
                'Phí vận chuyển'.tr(),
                state.orderShippingFee.toPrice,
                'Giảm giá'.tr(),
                PriceUnit.zero.toPrice,
                'Tổng thanh toán'.tr(),
                context
                    .read<CheckoutBloc>()
                    .getTotalPrice()
                    .toPrice
                    .text
                    .textS
                    .colorDarkest(context)
                    .medium
                    .make(),
              ],
            );
          },
        ).pxDefault(),
      ],
    );
  }
}
