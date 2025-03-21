import 'package:hlshop/all_file/all_file.dart';

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
      return await _msOrderApi
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

  Future<void> updateOrderStatus({
    required String? id,
    required OrderStatus? orderStatus,
  }) async {
    if (id == null) throw Exception('Không có id don hàng');
    if (orderStatus == null) throw Exception('Không có trạng thái don hàng');
    await _msOrderApi.updateOrderStatus(
      orderID: id,
      orderStatus: orderStatus.toMsOrderStatus().rawValue,
    );
  }
}
