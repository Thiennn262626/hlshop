import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/checkout/domain/entity/OrderShippingFeeEntity.dart';
import 'package:hlshop/app/features/shopping_cart/domain/domain.dart';

abstract class CheckoutRepo {
  Future<void> createOrder({
    required List<ShoppingCartItemEntity>? carts, //sellers
    required String receiverAddressID,
    required int paymentMethod,
  });

  Future<OrderShippingFeeEntity?> getOrderShippingFee({
    required String? receiverAddressID,
    required String? insuranceValue,
  });
}
