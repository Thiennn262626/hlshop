import 'package:hlshop/all_file/all_file.dart';

part 'ms_checkout_api.g.dart';

@RestApi()
abstract class MsCheckoutApi {
  factory MsCheckoutApi(Dio dio) = _MsCheckoutApi;

  @POST('/api/hlshop/order/create')
  Future<MsCreateOrderRes?> createOrder({
    @Body() MsCreateOrderRq? body,
  });

  @POST('/api/hlshop/order/create-order-qr-payment-momo')
  Future<MSCreaQRMoMoRes?> createOrderQrPaymentMomo({
    @Query('orderID') String? orderID,
  });

  @GET('/api/hlshop/feeship/get-shipping-order-fee')
  Future<OrderShippingFee?> getOrderShippingFee({
    @Body() GetOrderShippingFeeRq? body,
  });
}
