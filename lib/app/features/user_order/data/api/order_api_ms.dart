import 'package:hlshop/all_file/all_file.dart';

part 'order_api_ms.g.dart';

@RestApi()
abstract class MsOrderApi {
  factory MsOrderApi(Dio dio) = _MsOrderApi;

  @GET('/api/hlshop/order/get-list')
  Future<List<MsOderGroupData>> getListOrder({
    @Query('orderStatus') int? orderStatus,
  });

  @GET('/api/hlshop/order/get-count-list')
  Future<UserOrderCountModel?> getCountListOrder();

  @GET('/api/hlshop/order/get-detail')
  Future<MsOderGroupData?> getOrderDetail({
    @Query('orderID') String? orderID,
  });

  @POST('/api/hlshop/order/user-update-order-status')
  Future<void> updateOrderStatus({
    @Query('orderID') String? orderID,
    @Query('orderStatus') int? orderStatus,
  });

  @GET('/api/hlshop/order/get-order-status-tracking')
  Future<List<MsOrderTracking>> getListTrackingOrder({
    @Query('orderID') String? orderID,
  });
}
