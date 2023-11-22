import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/checkout/presentation/group_item/checkout_product_group_item.dart';
import 'package:hlshop/app/features/checkout/presentation/main/bloc/checkout_bloc.dart';
import 'package:hlshop/app/features/checkout/presentation/main/widget/checkout_pay_detail.dart';
import 'package:hlshop/app/features/user/self.dart';

class CheckoutBody extends StatelessWidget {
  const CheckoutBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
      child: Column(
        children: [
          BlocBuilder<CheckoutBloc, CheckoutState>(
            builder: (context, state) {
              return UserReceiveAddressSection(
                address: state.userAddress,
              );
            },
          ).pxDefault(),
          const CheckoutProductGroupItem(),
          const AppDivider(),
          BlocBuilder<CheckoutBloc, CheckoutState>(
            builder: (context, state) {
              final bloc = context.read<CheckoutBloc>();
              return AppTileText.semiBold(
                padding: Dimens.edge,
                title: 'Phương thức thanh toán'.tr(),
                subtitle: _getPaymentMethodText(state.paymentMethod).tr(),
                onPressed: () async {
                  final result = await context.pushRoute(
                    CheckoutPaymentRoute(
                      paymentMethod: state.paymentMethod,
                    ),
                  );

                  bloc.add(
                    CheckoutEvent.updatePaymentMethod(result as int),
                  );
                },
              );
            },
          ),
          const AppDivider(),
          const CheckoutPaymentDetail().pyDefault(),
        ],
      ),
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
