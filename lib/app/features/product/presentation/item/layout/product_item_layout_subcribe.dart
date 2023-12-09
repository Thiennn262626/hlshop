import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';
import 'package:hlshop/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:hlshop/app/features/product/presentation/item/product_item_args.dart';
import 'package:hlshop/app/features/product/presentation/widget/product_price_with_type.dart';

class ProductItemLayoutSubcribe extends StatelessWidget {
  const ProductItemLayoutSubcribe({
    super.key,
    required this.product,
    this.onHeartPressed,
    this.onPressed,
    this.onAddToCart,
    this.args = const ProductItemArgs(),
  });

  final ProductEntity product;
  final VoidCallback? onHeartPressed;
  final VoidCallback? onPressed;
  final VoidCallback? onAddToCart;

  final ProductItemArgs args;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: onPressed,
      child: Container(
        width: ProductItemLayoutType.layout1.size.width,
        height: ProductItemLayoutType.layout1.size.height,
        decoration: AppDecor.grayBorder(
          context,
        ),
        child: Stack(
          children: [
            CheckTextExceed(
              content: product.name ?? '',
              maxLine: 1,
              textStyle:
                  context.theme.textTheme.titleMedium ?? const TextStyle(),
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
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ProductPriceWithType(
                          price: product.price,
                          type: product.type,
                        ).expand(),
                        // AppListedPrice(
                        //   price: product.listedPrice,
                        // ).expand(),
                        AppButtonIcon(
                          icon: PhosphorIcons.heart_fill,
                          iconColor: const Color(0xffff6b6b),
                          iconSize: 32,
                          onPressed: onHeartPressed,
                        ),
                      ],
                    ),
                  ].filterNotNullList(),
                ).p12();
              },
            ),
            Positioned(
              top: 10,
              right: 10,
              child: AppButton(
                style: AppButtonTheme.primary(
                  context,
                ).copyWith(
                    minimumSize: const MaterialStatePropertyAll(Size.zero),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: const MaterialStatePropertyAll(Dimens.edge_XS3)),
                onPressed: onAddToCart ?? () {},
                child: const Icon(Icons.add_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
