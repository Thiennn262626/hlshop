import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/checkout/data/model/base_checkout_model.dart';
import 'package:hlshop/app/features/shopping_cart/domain/domain.dart';

extension MsCheckoutExtend on ShoppingCartItemGroupEntity {
  Sellers toEntity() {
    return Sellers(
      sellerID: id,
      carts: productCartList.mapAsList(
        (item) => Carts(
          cartID: item.id,
        ),
      ),
    );
  }
}
