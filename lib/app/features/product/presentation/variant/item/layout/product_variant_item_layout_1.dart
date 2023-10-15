import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/self.dart';

class ProductVariantItemLayout1 extends StatelessWidget {
  const ProductVariantItemLayout1({super.key, required this.item, this.args});

  final ProductAttributeValueEntity? item;
  final ProductAttributeValueArgs? args;

  @override
  Widget build(BuildContext context) {
    return AppImg(
      item?.img?.src,
    ).aspectRatio(1);
  }
}
