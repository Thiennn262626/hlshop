import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/distributor/presentation/widgets/distributer_name.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_entities.dart';

class UserOrderGroupItem extends StatelessWidget {
  const UserOrderGroupItem({
    super.key,
    this.order,
    required this.orderData,
    this.showStatus = true,
    this.limitItemShow,
  });

  final OrderEntity? order;
  final OrderDataEntity? orderData;
  final bool showStatus;
  final int? limitItemShow;

  void _onItemClick(BuildContext context) {
    context.pushRoute(UserOrderDetailRoute(order: orderData));
  }

  @override
  Widget build(BuildContext context) {
    final isExpanded = orderData!.orderProductList.isNotNullOrEmpty &&
        limitItemShow != null &&
        (orderData!.orderProductList?.length ?? 0) > limitItemShow!;
    final productItemCount = isExpanded
        ? (limitItemShow ?? 2)
        : orderData?.orderProductList?.length ?? 0;
    return CardCupertinoEffect(
      onPressed: () {
        _onItemClick(context);
      },
      child: Column(
        children: [
          DistributorName(
            distributorEntity: orderData?.distributorEntity,
          ).pDefault(),
          Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 16),
                itemCount: productItemCount,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final orderProduct =
                      orderData?.orderProductList.getOrNull(index);
                  // return CheckoutProductItem(
                  //   productItem: orderProduct?.productEntity,
                  //   quantity: orderProduct?.quantity ?? 1,
                  // );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 20);
                },
              ).pxDefault(),
              if (isExpanded) ...[
                const AppDivider.thin().pxDefault(),
                AppButtonText(
                  label: 'Xem thêm'.tr(),
                  color: context.textTheme.bodySmall?.color,
                  onPressed: () {
                    _onItemClick(context);
                  },
                ),
              ]
            ],
          ),
          Row(
            children: [
              'Tổng thanh toán ({} sản phẩm):'
                  .tr(
                    args: ['3'],
                  )
                  .text
                  .textS
                  .colorDark(context)
                  .make()
                  .expand(),
              AppPrice(
                price: orderData?.totalPrice,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: context.textS,
                ),
              ),
            ],
          ).pDefault(),
          if (showStatus)
            AppTile(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              space: 10,
              title: 'Đang chờ duyệt'
                  .text
                  .textS
                  .color(context.themeColor.orange)
                  .make(),
              leading: Icon(
                PhosphorIcons.truck,
                color: context.themeColor.orange,
              ),
              onPressed: () {
                _onItemClick(context);
              },
            ),
        ].withDivider(
          const Divider(
            thickness: 1,
            height: 1,
          ),
        ),
      ),
    );
  }
}
