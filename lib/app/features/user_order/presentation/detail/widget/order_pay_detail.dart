import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_entities.dart';

class OrderPaymentDetail extends StatelessWidget {
  const OrderPaymentDetail({
    super.key,
    this.order,
  });
  final OrderDataEntity? order;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: LocaleKeys.checkout_PayDetail.tr(),
        ),
        const AppDivider.thin().pDefault(),
        AppKeyValueList(
          keyTextBuilder: (context, item) => '$item:'.text.textS.make(),
          valueTextBuilder: (context, item) =>
              item.text.textS.colorDarkest(context).make(),
          children: [
            'Phí vận chuyển'.tr(),
            order?.orderShippingFee?.shippingFee?.toPrice ?? '0'.toPrice,
            //order?.totalPrice.toPrice ?? '0'.toPrice,
            LocaleKeys.checkout_Discount.tr(),
            '0'.toPrice,
            LocaleKeys.checkout_TotalPay.tr(),
            order?.totalPriceOrder.toPrice.text.textS
                .colorDarkest(context)
                .medium
                .make(),
          ],
        ).pxDefault(),
      ],
    );
  }
}
