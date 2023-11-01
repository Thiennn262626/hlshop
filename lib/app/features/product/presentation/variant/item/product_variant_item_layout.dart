import 'package:hlshop/all_file/all_file.dart';

enum ProductVariantItemLayoutType {
  layout1(size: Size(50, 50)),
  layoutTile1(size: Size(400, 40)),
  layoutTileDisable(size: Size(400, 40));

  const ProductVariantItemLayoutType({
    required this.size,
  });

  final Size size;
}

class ProductAttributeValueArgs {
  const ProductAttributeValueArgs({
    this.isSelected = false,
    this.onPressed,
  });

  final bool isSelected;
  final VoidCallback? onPressed;
}
