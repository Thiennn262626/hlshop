import 'package:hlshop/app/features/user_order/data/model/user_order_count_model.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_entities.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_status_tracking_entity.dart';

// ignore: one_member_abstracts
abstract class UserOrderRepo {
  Future<List<OrderEntity>> getOrderList({
    OrderStatus? orderStatus,
    int? offset,
    int? limit,
  });

  Future<UserOrderCountModel?> getListCountOrder();

  Future<OrderDataEntity> getUserOrderDetail({
    required String? id,
  });

  Future<List<OrderStatusTrackingEntity>> getListTrackingOrder({
    required String? id,
  });

  Future<void> updateOrderStatus({
    required String? id,
    required OrderStatus? orderStatus,
  });
}
