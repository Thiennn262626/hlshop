import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/presentation/widget/product_price_with_type.dart';
import 'package:hlshop/app/features/product/self.dart';

class ProductTitleHeader extends StatelessWidget {
  const ProductTitleHeader({
    super.key,
    this.product,
  });

  final ProductEntity? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          product?.name?.text.titleLarge(context).maxLines(3).ellipsis.make() ??
              const SizedBox(),
          Gaps.vGap8,
          product?.shortDescription?.text.maxLines(2).ellipsis.make() ??
              const SizedBox(),
          Row(
            children: [
              ProductPriceWithType(
                price: product?.price,
                priceStyle: context.textTheme.titleLarge?.copyWith(
                  color: context.theme.colorScheme.secondary,
                ),
                type: product?.type,
              ).expand(),
              AppButtonIcon(
                icon: PhosphorIcons.heart,
                onPressed: () {},
              ),
              AppButtonIcon(
                icon: AppIcon.share,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
