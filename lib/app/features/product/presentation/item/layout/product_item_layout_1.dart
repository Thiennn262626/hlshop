import 'package:hlshop/all_file/all_file.dart';

class ProductItemLayout1 extends StatelessWidget {
  const ProductItemLayout1({
    super.key,
    required this.product,
    this.onAddToCart,
    this.onPressed,
    this.itemSize,
    this.args = const ProductItemArgs(),
  });

  final ProductEntity product;
  final VoidCallback? onAddToCart;
  final VoidCallback? onPressed;

  final ProductItemArgs args;
  final Size? itemSize;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: onPressed,
      child: Container(
        width: itemSize?.width,
        height: itemSize?.height,
        decoration: AppDecor.grayBorder(
          context,
        ),
        child: CheckTextExceed(
          content: product.name ?? '',
          maxLine: 1,
          textStyle: context.theme.textTheme.titleMedium ?? const TextStyle(),
          builder: (context, textStyle, isExceedMaxLines) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppImg(
                  product.img,
                ).cornerRadius(Dimens.rad_XS).aspectRatio(1),
                Gaps.vGap8,
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
                ProductPriceWithType(
                  price: product.price,
                  type: product.type,
                ),
                Gaps.vGap2,
                AppListedPrice(
                  price: product.listedPrice,
                ),
                Gaps.vGap6,
                AppButton(
                  label: LocaleKeys.product_Buy.tr(),
                  onPressed: onAddToCart ?? () {},
                ),
              ].filterNotNullList(),
            ).p12();
          },
        ),
      ),
    );
  }
}
