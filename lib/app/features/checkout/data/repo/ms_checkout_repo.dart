import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/checkout/self.dart';
import 'package:hlshop/app/features/shopping_cart/domain/model/shopping_cart_base_entity.dart';

class MsCheckoutRepo extends CheckoutRepo {
  final MsCheckoutApi _api = getIt();

  @override
  Future<void> createOrder({
    required List<ShoppingCartItemGroupEntity>? sellers,
    required String receiverAddressID,
    required int paymentMethod,
  }) async {
    return _api.createOrder(
      body: MsCreateOrderRq(
        sellers: sellers.mapAsList(
          (item) => item.toEntity(),
        ),
        receiverAddressID: receiverAddressID,
        paymentMethod: paymentMethod,
      ),
    );
  }
}
