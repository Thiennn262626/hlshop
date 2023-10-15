import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/checkout/presentation/item/layout/checkout_product_item_layout_1.dart';
import 'package:hlshop/app/features/product/self.dart';

class CheckoutProductItem extends StatelessWidget {
  const CheckoutProductItem({
    super.key,
    this.counterLayoutName,
    this.productItem,
    this.quantity,
  });
  final ProductEntity? productItem;
  final int? quantity;
  final String? counterLayoutName;
  @override
  Widget build(BuildContext context) {
    return CheckoutProductItemLayout1(
      productEntity: productItem,
      quantity: quantity,
    );
  }
}
