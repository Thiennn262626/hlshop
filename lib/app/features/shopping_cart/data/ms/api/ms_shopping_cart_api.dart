import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/shopping_cart/data/ms/model/base_shopping_cart_model.dart';

part 'ms_shopping_cart_api.g.dart';

@RestApi()
abstract class MsShoppingCartApi {
  factory MsShoppingCartApi(Dio dio) = _MsShoppingCartApi;

  @POST('/api/mulstore/cart/add-cart')
  Future<void> addCart({
    @Body() MsShoppingCartAddReq? body,
  });

  @POST('/api/mulstore/cart/update-quantity-cart')
  Future<void> updateQuantity({
    @Body() MsShoppingCartUpdateReq? body,
  });

  @GET('/api/mulstore/cart/get-list-cart')
  Future<List<MsShoppingCart>> getCartList();
}
