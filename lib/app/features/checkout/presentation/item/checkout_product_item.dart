import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/presentation/item/product_item_args.dart';
import 'package:hlshop/app/features/product/presentation/widget/product_price_with_type.dart';
import 'package:hlshop/app/features/shopping_cart/domain/model/shopping_cart_base_entity.dart';

class CheckoutProductItem extends StatelessWidget {
  const CheckoutProductItem({
    super.key,
    required this.cartItem,
    this.quantity,
  });
  final ShoppingCartItemEntity cartItem;
  final int? quantity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CheckoutProductItem1(
          cartItem: cartItem,
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

class CheckoutProductItem1 extends StatelessWidget {
  const CheckoutProductItem1({
    super.key,
    required this.cartItem,
    this.onAddToCart,
    this.onPressed,
    this.args = const ProductItemArgs(),
  });

  final ShoppingCartItemEntity cartItem;
  final VoidCallback? onAddToCart;
  final VoidCallback? onPressed;

  final ProductItemArgs args;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: onPressed,
      child: SizedBox(
        height: 70,
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
                cartItem.product.img,
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        cartItem.product.name?.textAuto
            .titleMedium(context)
            .medium
            .maxLines(1)
            .ellipsis
            .make()
            .pb2()
            .minHeight(22),
        const Spacer(),
        Row(
          children: [
            if (cartItem.variant!.variantValueName.isNotNullOrBlank)
              'Phân loại: {}'
                  .tr(
                    args: [cartItem.variant!.variantValueName!],
                  )
                  .text
                  .textXS3
                  .colorDark(context)
                  .make()
                  .expand(),
            ProductPriceWithType(
              price: cartItem.variant?.price,
              priceStyle: context.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: context.textS,
              ),
              type: cartItem.product.type,
              typeStyle: context.bodySmall?.copyWith(
                color: context.themeColor.grey,
              ),
            ).expand(),
            args.action,
          ].withDivider(Gaps.hGap8),
        ),
      ].filterNotNullList(),
    );
  }
}
