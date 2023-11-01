import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/self.dart';

class ProductVariantItemTileLayoutDisable extends StatelessWidget {
  const ProductVariantItemTileLayoutDisable({super.key, required this.item});

  final ProductAttributeValueEntity? item;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: null,
      child: Container(
        decoration: BoxDecoration(
          color: context.theme.disabledColor,
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
                  context.theme.textTheme.bodySmall?.color,
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
