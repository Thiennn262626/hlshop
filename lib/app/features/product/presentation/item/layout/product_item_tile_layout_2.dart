import 'package:hlshop/all_file/all_file.dart';

class ProductItemTileLayout2 extends StatelessWidget {
  const ProductItemTileLayout2({
    super.key,
    required this.product,
    this.onAddToCart,
    this.onPressed,
    this.args = const ProductItemArgs(),
  });

  final ProductEntity product;
  final VoidCallback? onAddToCart;
  final VoidCallback? onPressed;

  final ProductItemArgs args;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: onPressed,
      child: SizedBox(
        height: ProductItemLayoutType.layoutTile2.size.height,
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
                product.img,
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
        product.name?.textAuto
            .titleMedium(context)
            .semiBold
            .maxLines(2)
            .ellipsis
            .make()
            .pb2()
            .minHeight(22),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ProductPriceWithType(
              price: product.price,
              type: product.type,
            ),
            Gaps.vGap2,
            AppListedPrice(
              price: product.listedPrice,
            ),
          ],
        ),
        const Spacer(),
        args.action ?? const SizedBox.shrink(),
      ].filterNotNullList(),
    );
  }
}
