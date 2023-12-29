// import 'package:hlshop/all_file/all_file.dart';
// import 'package:hlshop/app/features/user_order/presentation/item/cubit/user_order_item_cubit.dart';
//
// class UserOrderItem extends StatelessWidget {
//   const UserOrderItem({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => UserOrderItemCubit()..fetchItem(),
//       child: Builder(builder: (context) {
//         return BlocListener<UserOrderItemCubit, UserOrderItemState>(
//           listener: _onStateChanged,
//           child: UserOrderItemLayout1(),
//         );
//       }),
//     );
//   }
//
//   void _onStateChanged(BuildContext context, UserOrderItemState state) {
//     if (state.status == ItemStatus.error) {
//       DialogUtils.showErrorDialog(
//         context: context,
//         content: context.getAppErrorMsg(state.error),
//         error: state.error,
//       );
//     }
//   }
// }
//
// class _PageBodyLoading extends StatelessWidget {
//   const _PageBodyLoading({super.key, required this.child});
//
//   final Widget child;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<UserOrderItemCubit, UserOrderItemState>(
//       builder: (context, state) {
//         // if (state.status == ItemDetailStatus.error) {
//         //   return SimpleErrorText(error: state.errorMsg ?? '');
//         // }
//         final isLoading = state.status == ItemStatus.loading ||
//             state.status == ItemStatus.initial;
//
//         return child;
//       },
//     );
//   }
// }

import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/presentation/item/product_item_args.dart';
import 'package:hlshop/app/features/product/presentation/widget/product_price_with_type.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_entities.dart';

class OrderProductItem extends StatelessWidget {
  const OrderProductItem({
    super.key,
    required this.orderItem,
    this.quantity,
  });
  final OrderProductEntity orderItem;
  final int? quantity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OrderProductItem1(
          orderItem: orderItem,
          args: ProductItemArgs(
            action: Row(
              children: [
                'x '.text.make(),
                '$quantity'.text.semiBold.size(15).make(),
              ],
            ),
          ),
        ).expand(),
      ],
    );
  }
}

class OrderProductItem1 extends StatelessWidget {
  const OrderProductItem1({
    super.key,
    required this.orderItem,
    this.onPressed,
    this.args = const ProductItemArgs(),
  });

  final OrderProductEntity orderItem;
  final VoidCallback? onPressed;

  final ProductItemArgs args;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: onPressed,
      child: SizedBox(
        height: 85,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: context.themeColor.greyLighter,
                ),
                borderRadius: Dimens.rad_border_circular_XS2,
              ),
              clipBehavior: Clip.hardEdge,
              child: AppImg(
                orderItem.productEntity?.img,
                fit: BoxFit.cover,
              ),
            ).aspectRatio(1),
            Gaps.hGap12,
            _buildContent(context).py8().expand(),
          ],
        ),
      ),
    );
  }

  Column _buildContent(BuildContext context) {
    // var variantValueName = orderItem.productCartAttribute?.first?.values
    //     ?.map((e) => e.name)
    //     .join(' - ');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        orderItem.productEntity?.name?.textAuto
            .titleMedium(context)
            .medium
            .maxLines(2)
            .ellipsis
            .make()
            .pb2()
            .minHeight(22),
        const Spacer(),
        Row(
          children: [
            if (orderItem.variant!.variantValueName.isNotNullOrBlank)
              'Phân loại: {}'
                  .tr(
                    args: [orderItem.variant!.variantValueName!],
                  )
                  .text
                  .textXS3
                  .colorDark(context)
                  .make(),
            const Spacer(),
            ProductPriceWithType(
              price: orderItem.price,
              priceStyle: context.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: context.textS,
              ),
              type: orderItem.productEntity?.type,
              typeStyle: context.bodySmall?.copyWith(
                color: context.themeColor.grey,
              ),
            ),
            Gaps.hGap8,
            args.action,
          ].withDivider(Gaps.hGap8),
        ).expand(),
      ].filterNotNullList(),
    );
  }
}
