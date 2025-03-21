import 'package:hlshop/all_file/all_file.dart';

part 'ms_shopping_cart_api.g.dart';

@RestApi()
abstract class MsShoppingCartApi {
  factory MsShoppingCartApi(Dio dio) = _MsShoppingCartApi;

  @POST('/api/hlshop/cart/add-cart')
  Future<void> addCart({
    @Body() MsShoppingCartAddReq? body,
  });

  @POST('/api/hlshop/cart/update-quantity-cart')
  Future<void> updateQuantity({
    @Body() MsShoppingCartUpdateReq? body,
  });

  @GET('/api/hlshop/cart/get-list-cart')
  Future<List<MsProductCart>> getCartList();
}
