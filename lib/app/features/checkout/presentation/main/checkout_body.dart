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
          AppTileText.semiBold(
            padding: Dimens.edge,
            title: 'Phương thức thanh toán'.tr(),
            subtitle: 'Thanh toán khi nhận hàng'.tr(),
            onPressed: () {},
          ),
          const AppDivider(),
          const CheckoutPaymentDetail().pyDefault(),
        ],
      ),
    );
  }
}
