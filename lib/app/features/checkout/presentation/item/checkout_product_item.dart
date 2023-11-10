import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/checkout/presentation/item/layout/checkout_product_item_layout_1.dart';
import 'package:hlshop/app/features/shopping_cart/domain/model/shopping_cart_base_entity.dart';

class CheckoutProductItem extends StatelessWidget {
  const CheckoutProductItem({
    super.key,
    this.counterLayoutName,
    required this.cartItem,
    this.quantity,
  });
  final ShoppingCartItemEntity cartItem;
  final int? quantity;
  final String? counterLayoutName;
  @override
  Widget build(BuildContext context) {
    return CheckoutProductItemLayout1(
      cartItem: cartItem,
      quantity: quantity,
    );
  }
}
