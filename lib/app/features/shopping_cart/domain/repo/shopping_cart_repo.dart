import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/self.dart';
import 'package:hlshop/app/features/shopping_cart/seft.dart';

// Create abstract Shopping Cart Repo
abstract class ShoppingCartRepo {
  Future<List<ShoppingCartItemEntity>> getShoppingCartList();

  Future<void> addShoppingCartItem({
    required ProductEntity item,
    required int quantity,
    ProductVariantEntity? selectedVariant,
  });

  Future<void> removeShoppingCartItem({
    required ShoppingCartItemEntity cartItem,
  });

  Future<void> updateShoppingCartItem({
    required ShoppingCartItemEntity cartItem,
    required int quantity,
  });

  Future<void> clearShoppingCart();

  Future<void> checkoutShoppingCart();
}
