import 'package:hlshop/all_file/all_file.dart';

class OrderCodeGroup extends StatelessWidget {
  const OrderCodeGroup({
    super.key,
    required this.orderCode,
  });

  final String orderCode;

  void onOpenDistributorDetail(BuildContext context) {
    // context.pushRoute(DistributorDetailRoute());
  }

  @override
  Widget build(BuildContext context) {
    if (orderCode == null) {
      return const SizedBox.shrink();
    }
    return GestureDetector(
      // onTap: () => onOpenDistributorDetail(context),
      child: Row(
        children: [
          const Icon(PhosphorIcons.hash_thin),
          orderCode.text.titleMedium(context).semiBold.make().expand(),
        ].withDivider(Gaps.hGap8),
      ),
    );
  }
}
