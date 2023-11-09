import 'package:hlshop/app/features/shopping_cart/domain/domain.dart';

abstract class CheckoutRepo {
  Future<void> createOrder({
    required List<ShoppingCartItemEntity>? carts, //sellers
    required String receiverAddressID,
    required int paymentMethod,
  });
}
