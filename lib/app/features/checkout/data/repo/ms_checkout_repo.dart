import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/checkout/domain/entity/OrderShippingFeeEntity.dart';
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
        receiverAddressID: receiverAddressID,
        paymentMethod: paymentMethod,
      ),
    );
  }

  @override
  Future<OrderShippingFeeEntity?> getOrderShippingFee({
    required String? receiverAddressID,
    required String? insuranceValue,
  }) async {
    return _api
        .getOrderShippingFee(
          body: GetOrderShippingFeeRq(
            receiverAddressID: receiverAddressID,
            insuranceValue: insuranceValue,
          ),
        )
        .then(_convertOrderShippingFee);
  }

  FutureOr<OrderShippingFeeEntity?> _convertOrderShippingFee(
      OrderShippingFee? value) {
    if (value == null) {
      return null;
    }
    return OrderShippingFeeEntity(
      shippingFee: value.shippingFee,
    );
  }
}
