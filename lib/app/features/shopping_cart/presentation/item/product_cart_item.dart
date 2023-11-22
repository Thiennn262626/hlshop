import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/presentation/item/product_item_args.dart';
import 'package:hlshop/app/features/product/presentation/widget/product_price_with_type.dart';
import 'package:hlshop/app/features/shopping_cart/domain/model/shopping_cart_base_entity.dart';

class ProductCartItem extends StatelessWidget {
  const ProductCartItem({
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
        height: 120,
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
            _buildContent(context).expand(),
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
            .semiBold
            .maxLines(2)
            .ellipsis
            .make()
            .pb2()
            .minHeight(22),
        if (cartItem.variant?.variantValueName != null)
          'Phân loại: {}'
              .tr(
                args: [cartItem.variant?.variantValueName ?? ''],
              )
              .text
              .textXS3
              .colorDark(context)
              .make()
              .expand(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ProductPriceWithType(
              price: cartItem.variant?.price,
              type: cartItem.product.type,
            ),
            Gaps.vGap2,
            AppListedPrice(
              price: cartItem.variant?.listedPrice,
            ),
          ],
        ),
        const Spacer(),
        args.action ?? const SizedBox.shrink(),
      ].filterNotNullList(),
    );
  }
}
