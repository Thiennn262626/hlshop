import 'package:hlshop/all_file/all_file.dart';

abstract class CheckoutRepo {
  Future<CreateOrderResEntity?> createOrder({
    required List<ShoppingCartItemEntity>? carts, //sellers
    required String receiverAddressID,
    required int paymentMethod,
  });

  Future<OrderShippingFeeEntity?> getOrderShippingFee({
    required List<ShoppingCartItemEntity>? carts,
    required String? receiverAddressID,
    required String? insuranceValue,
  });

  Future<QRMoMoEntity?> createOrderMomo(String? orderID);
}
