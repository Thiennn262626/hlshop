import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/self.dart';

class ProductVariantItemTileLayout1 extends StatelessWidget {
  const ProductVariantItemTileLayout1(
      {super.key, required this.item, this.args});

  final ProductAttributeValueEntity? item;
  final ProductAttributeValueArgs? args;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: args?.onPressed,
      child: Container(
        decoration: args?.isSelected ?? false
            ? BoxDecoration(
                color: context.themeColor.primaryLighter,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: context.theme.primaryColor),
              )
            : BoxDecoration(
                color: context.theme.dividerColor,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: context.theme.dividerColor),
              ),
        height: ProductVariantItemLayoutType.layoutTile1.size.height,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (item?.imgSrc != null)
              AppImg(
                item?.imgSrc,
              ).aspectRatio(1).cornerRadius(4),
            item?.name?.text
                .bodySmall(context)
                .maxLines(1)
                .color(
                  args?.isSelected ?? false
                      ? context.theme.primaryColor
                      : context.textTheme.bodyMedium?.color,
                )
                .ellipsis
                .make()
                .pr2(),
          ].withDivider(Gaps.hGap8),
        ).px8(),
      ),
    );
  }
}
