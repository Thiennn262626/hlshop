import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user_order/data/mulstore/model/user_order_base_model.dart';
import 'package:hlshop/app/features/user_order/data/mulstore/model/user_order_count_model.dart';

part 'order_api_ms.g.dart';

@RestApi()
abstract class MsOrderApi {
  factory MsOrderApi(Dio dio) = _MsOrderApi;

  @GET('/api/mulstore/order/get-list')
  Future<List<MsOderGroupData>> getListOrder({
    @Query('orderStatus') int? orderStatus,
  });

  @GET('/api/mulstore/order/get-count-list')
  Future<UserOrderCountModel?> getCountListOrder();

  @GET('/api/mulstore/order/get-detail')
  Future<MsOderGroupData?> getOrderDetail({
    @Query('orderID') String? orderID,
  });

  @GET('/api/mulstore/order/get-order-status-tracking')
  Future<List<MsOrderTracking>> getListTrackingOrder({
    @Query('orderID') String? orderID,
  });
}
