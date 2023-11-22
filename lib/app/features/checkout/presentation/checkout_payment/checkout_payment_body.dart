import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/checkout/presentation/main/widget/payment_method_item.dart';

class CheckoutPaymentBody extends StatelessWidget {
  const CheckoutPaymentBody({
    super.key,
    required this.paymentMethod,
  });

  final int paymentMethod;
  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
      child: Column(
        children: [
          SectionTitle(
            title: 'Thanh toán qua cổng'.tr(),
          ),
          const AppDivider.thin().pDefault(),
          PaymentMethodItem(
            paymentMethod: paymentMethod,
            index: 1,
            title: 'MOMO'.tr(),
            icon: Assets.icons.common.momo.svg(),
          ),
          const AppDivider.thin().pDefault(),
          SectionTitle(
            title: 'Thanh toán trực tiếp'.tr(),
          ),
          const AppDivider.thin().pDefault(),
          PaymentMethodItem(
            paymentMethod: paymentMethod,
            index: 0,
            title: 'Thanh toán khi nhận hàng'.tr(),
            icon: Assets.icons.common.shipCod.svg(),
          ),
          const AppDivider.thin().pDefault(),
        ],
      ),
    );
  }
}
