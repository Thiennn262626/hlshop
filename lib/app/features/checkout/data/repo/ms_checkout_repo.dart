import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/checkout/self.dart';
import 'package:hlshop/app/features/shopping_cart/domain/model/shopping_cart_base_entity.dart';

class MsCheckoutRepo extends CheckoutRepo {
  final MsCheckoutApi _api = getIt();

  @override
  Future<void> createOrder({
    required List<ShoppingCartItemEntity>? carts,
    required String receiverAddressID,
    required int paymentMethod,
  }) async {
    return _api.createOrder(
      body: MsCreateOrderRq(
        carts: carts.mapAsList(
          (item) => item.toEntity(),
        ),
        // sellcaers: sellers.mapAsList(
        //   (item) => item.toEntity(),
        // ),
        receiverAddressID: receiverAddressID,
        paymentMethod: paymentMethod,
      ),
    );
  }
}
