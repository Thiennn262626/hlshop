import 'package:hlshop/app/features/checkout/data/model/base_checkout_model.dart';
import 'package:hlshop/app/features/shopping_cart/domain/domain.dart';

extension MsCheckoutExtend on ShoppingCartItemEntity {
  Carts toEntity() {
    return Carts(
      cartID: id,
    );
  }
}
