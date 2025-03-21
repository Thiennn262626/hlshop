import 'package:hlshop/all_file/all_file.dart';

class ProductAttributeValue extends StatelessWidget {
  const ProductAttributeValue({
    super.key,
    required this.item,
    this.args,
    this.layoutType = ProductVariantItemLayoutType.layout1,
  });

  final ProductAttributeValueEntity? item;
  final ProductAttributeValueArgs? args;
  final ProductVariantItemLayoutType layoutType;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        switch (layoutType) {
          case ProductVariantItemLayoutType.layout1:
            return ProductVariantItemLayout1(
              item: item,
              args: args,
            );
          case ProductVariantItemLayoutType.layoutTile1:
            return ProductVariantItemTileLayout1(
              item: item,
              args: args,
            );
          case ProductVariantItemLayoutType.layoutTileDisable:
            return ProductVariantItemTileLayoutDisable(item: item);
        }
      },
    );
  }
}
