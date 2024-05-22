import 'package:hlshop/all_file/all_file.dart';

class OrderCodeGroup extends StatelessWidget {
  const OrderCodeGroup({
    super.key,
    required this.orderCode,
    required this.finishPay,
    this.paymentMethod = 0,
  });

  final String orderCode;
  final bool finishPay;
  final int paymentMethod;

  void onOpenDistributorDetail(BuildContext context) {
    // context.pushRoute(DistributorDetailRoute());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => onOpenDistributorDetail(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(PhosphorIcons.hash_thin),
              orderCode.text.titleMedium(context).semiBold.make().expand(),
              if(paymentMethod == 0)
                'Thanh toán COD'.text.make().pOnly(right: 8),
              if (finishPay == true && paymentMethod == 1)
                'Đã thanh toán'.text.make().pOnly(right: 8),
              if (finishPay == false && paymentMethod == 1)
                'Chưa thanh toán'.text.make().pOnly(right: 8),
            ].withDivider(Gaps.hGap8),
          ),
          if (!finishPay && paymentMethod != 0)
            'Đơn hàng sẽ bị hủy sau 10 ngày nếu bạn không thanh toán'
                .tr()
                .text
                .bodySmall(context).color(context.themeColor.orange)
                .make().pt8(),
        ],
      ),
    );
  }
}
