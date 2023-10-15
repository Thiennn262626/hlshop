import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';
import 'package:hlshop/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:hlshop/app/features/product/presentation/item/product_item_args.dart';
import 'package:hlshop/app/features/product/presentation/widget/product_price_with_type.dart';

class ProductItemTileLayout3 extends StatelessWidget {
  const ProductItemTileLayout3({
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
        height: ProductItemLayoutType.layoutTile3.size.height,
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
        product.name?.textAuto
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
            ProductPriceWithType(
              price: product.price,
              priceStyle: context.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: context.textS,
              ),
              type: product.type,
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
