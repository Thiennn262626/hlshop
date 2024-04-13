import 'package:hlshop/all_file/all_file.dart';

class MsShoppingCartRepo extends ShoppingCartRepo {
  final MsShoppingCartApi _api = getIt();

  @override
  Future<void> addShoppingCartItem({
    required ProductEntity item,
    required int quantity,
    ProductVariantEntity? selectedVariant,
  }) {
    final msProduct = item.object;
    if (msProduct is MsProduct) {
      return _api.addCart(
        body: MsShoppingCartAddReq(
          productSKUID: selectedVariant?.id,
          quantity: quantity,
        ),
      );
    }
    throw Exception('Not support product type');
  }

  @override
  Future<void> updateShoppingCartItem({
    required ShoppingCartItemEntity cartItem,
    required int quantity,
  }) {
    final msProduct = cartItem.object;
    if (msProduct is MsProductCart) {
      return _api.updateQuantity(
        body: MsShoppingCartUpdateReq(
          cartID: msProduct.cartID,
          quantity: quantity,
        ),
      );
    } else {
      return _api.updateQuantity(
        body: MsShoppingCartUpdateReq(
          cartID: cartItem.id,
          quantity: quantity,
        ),
      );
    }
  }

  @override
  Future<void> removeShoppingCartItem({
    required ShoppingCartItemEntity cartItem,
  }) {
    final msProduct = cartItem.object;
    if (msProduct is MsProductCart) {
      return _api.updateQuantity(
        body: MsShoppingCartUpdateReq(
          cartID: msProduct.cartID,
          quantity: 0,
        ),
      );
    } else {
      return _api.updateQuantity(
        body: MsShoppingCartUpdateReq(
          cartID: cartItem.id,
          quantity: 0,
        ),
      );
    }
  }

  @override
  Future<List<ShoppingCartItemEntity>> getShoppingCartList() {
    return _api.getCartList().then((rs) {
      return rs.mapAsList((item) => item.getProductCartItem());
    });
  }

  @override
  Future<void> checkoutShoppingCart() {
    // TODO: implement checkoutShoppingCart
    throw UnimplementedError();
  }

  @override
  Future<void> clearShoppingCart() {
    // TODO: implement clearShoppingCart
    throw UnimplementedError();
  }
}
