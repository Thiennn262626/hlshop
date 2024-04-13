import 'package:hlshop/all_file/all_file.dart';

class ProductItemTileLayout1 extends StatelessWidget {
  const ProductItemTileLayout1({
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
      child: Container(
        width: ProductItemLayoutType.layoutTile1.size.width,
        height: ProductItemLayoutType.layoutTile1.size.height,
        decoration: AppDecor.grayBorder(
          context,
        ),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppImg(
                  product.img,
                ).aspectRatio(1),
                Gaps.hGap12,
                _buildContent(context).expand(),
              ],
            ).p12(),
            ProductDiscount1(
              child: Icon(
                AntIcons.giftFilled,
                size: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return CheckTextExceed(
      content: product.name ?? '',
      maxLine: 1,
      textStyle: context.theme.textTheme.titleMedium ?? const TextStyle(),
      builder: (context, textStyle, isExceedMaxLines) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          product.name?.text
              .textStyle(textStyle)
              .ellipsis
              .maxLines(2)
              .make()
              .pb4()
              .minHeight(22),
          product.description?.text
              .caption(context)
              .maxLines(isExceedMaxLines ? 1 : 2)
              .ellipsis
              .make(),
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ProductPriceWithType(
                    price: product.price,
                    type: product.type,
                  ),
                  AppListedPrice(
                    price: product.listedPrice,
                  ),
                ],
              ).expand(),
              AppButton(
                style: AppButtonTheme.primary(
                  context,
                ).copyWith(
                    minimumSize: const MaterialStatePropertyAll(Size.zero),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: const MaterialStatePropertyAll(Dimens.edge_XS3)),
                onPressed: onAddToCart ?? () {},
                child: const Icon(Icons.add_rounded),
              ),
            ],
          ),
        ].filterNotNullList(),
      ),
    );
  }
}
