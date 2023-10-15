import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user_order/data/mulstore/api/order_api_ms.dart';
import 'package:hlshop/app/features/user_order/data/mulstore/model/user_order_count_model.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_entities.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_status_tracking_entity.dart';
import 'package:hlshop/app/features/user_order/self.dart';

class MsUserOrderRepo extends UserOrderRepo {
  MsUserOrderRepo({MsOrderApi? msOrderApi}) {
    _msOrderApi = msOrderApi ?? getIt<MsOrderApi>();
  }
  OrderDataEntity _convertOrder(MsOderGroupData order) {
    return order.toEntity();
  }

  OrderStatusTrackingEntity _convertOrderTracking(
      MsOrderTracking orderTracking) {
    return orderTracking.toEntity();
  }

  late final MsOrderApi _msOrderApi;

  @override
  Future<List<OrderEntity>> getOrderList({
    OrderStatus? orderStatus,
    int? offset,
    int? limit,
  }) async {
    try {
      return _msOrderApi
          .getListOrder(orderStatus: orderStatus?.toMsOrderStatus().rawValue)
          .then(
            (listOrder) => listOrder
                .map((orderData) => MsOrder(listOrderItem: [orderData]))
                .map((e) => e.toEntity())
                .toList(),
          );
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<Map<OrderStatus, int?>> getOrderStatusCount() async {
    return {
      OrderStatus.newOrder: 1,
      OrderStatus.approved: 0,
      OrderStatus.packing: 2,
    };
  }

  @override
  Future<UserOrderCountModel?> getListCountOrder() async {
    return _msOrderApi.getCountListOrder();
  }

  @override
  Future<OrderDataEntity> getUserOrderDetail({
    required String? id,
  }) async {
    if (id == null) throw Exception('Không có id don hàng');
    final order = await _msOrderApi.getOrderDetail(
      orderID: id,
    );
    if (order != null) {
      return _convertOrder(order);
    }
    throw Exception('Không tìm thấy don hàng');
  }

  Future<List<OrderStatusTrackingEntity>> getListTrackingOrder(
      {required String? id}) async {
    if (id == null) throw Exception('Không có id don hàng');
    final orderTracking = await _msOrderApi.getListTrackingOrder(
      orderID: id,
    );
    if (orderTracking != null) {
      return orderTracking.map((e) => _convertOrderTracking(e)).toList();
    }
    throw Exception('Không tìm thấy don hàng');
  }
}
