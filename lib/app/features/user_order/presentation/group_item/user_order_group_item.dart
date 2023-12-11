import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_entities.dart';
import 'package:hlshop/app/features/user_order/presentation/item/user_order_item.dart';
import 'package:hlshop/app/features/user_order/presentation/main/cubit/user_order_cubit.dart';
import 'package:hlshop/app/features/user_order/presentation/widgets/distributer_name.dart';

class UserOrderGroupItem extends StatelessWidget {
  const UserOrderGroupItem({
    super.key,
    this.order,
    required this.orderData,
    this.showStatus = true,
    this.limitItemShow,
    this.isDetail = false,
  });

  final OrderEntity? order;
  final OrderDataEntity? orderData;
  final bool showStatus;
  final int? limitItemShow;
  final bool isDetail;

  Future<void> _onItemClick(BuildContext context) async {
    if (limitItemShow != null) {
      final isfetchStatus =
          await context.pushRoute(UserOrderDetailRoute(order: orderData));
      print('isfetchStatus $isfetchStatus');
      if (isfetchStatus == true) {
        context.read<UserOrderCubit>().fetchStatus();
      }
    }
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
          OrderCodeGroup(
            orderCode: orderData?.orderCode ?? '',
            finishPay: orderData?.finishPay ?? false,
            paymentMethod: orderData?.paymentMethod ?? 0,
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
                  return OrderProductItem(
                    orderItem: orderProduct ?? OrderProductEntity.demo(),
                    quantity: orderProduct?.quantity,
                  );
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
                    args: [
                      orderData?.orderProductList?.length.toString() ?? ''
                    ],
                  )
                  .text
                  .textS
                  .colorDark(context)
                  .make()
                  .expand(),
              AppPrice(
                price: isDetail
                    ? orderData?.totalPriceItem
                    : orderData?.totalPriceOrder,
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
              title: orderData?.getOrderStatusTracking
                  .toString()
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
