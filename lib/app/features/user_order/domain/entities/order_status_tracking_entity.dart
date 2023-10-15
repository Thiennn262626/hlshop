import 'package:hlshop/all_file/all_file.dart';

class OrderStatusTrackingEntity {
  OrderStatusTrackingEntity({
    this.id,
    this.orderId,
    this.orderStatus,
    this.actionDate,
    this.object,
  });
  final String? id;
  final String? orderId;
  final int? orderStatus;
  final String? actionDate;
  final Object? object;

  String? get getActionDate {
    final str = [
      actionDate?.toSimpleDateTimeLocale(),
      actionDate?.toSimpleDateLocale(),
    ].joinWithoutNull(' - ');
    final words = str?.split(', ');
    return words?.lastOrNull;
  }

  String? get getOrderStatusTracking {
    switch (orderStatus) {
      case 0:
        return 'Đặt hàng'.tr();
      case 1:
        return 'Đơn hàng đã duyệt'.tr();
      case 2:
        return 'Đang đóng gói'.tr();
      case 3:
        return 'Đơn hàng đang giao đến bạn'.tr();
      case 4:
        return 'Đơn hàng giao hàng thành công'.tr();
      case 5:
        return 'Đơn hàng đã hủy'.tr();
      case 6:
        return 'Đơn hàng đã hủy'.tr();
      case 7:
        return 'Đơn hàng đã trả hàng'.tr();
    }
    return null;
  }

  String? get getDecription {
    switch (orderStatus) {
      case 0:
        return 'Đặt hàng thành công'.tr();
      case 1:
        return 'Đơn hàng đã duyệt từ người bán'.tr();
      case 2:
        return 'Đơn hàng đang được đóng gói'.tr();
      case 3:
        return 'Đơn hàng đang giao đến bạn'.tr();
      case 4:
        return 'Đơn hàng đã giao thành công'.tr();
      case 5:
        return 'Đơn hàng đã hủy bởi bạn'.tr();
      case 6:
        return 'Đơn hàng đã hủy bởi người bán'.tr();
      case 7:
        return 'Đơn hàng đã trả hàng'.tr();
    }
    return null;
  }

  static List<OrderStatusTrackingEntity> demo() {
    final list = <OrderStatusTrackingEntity>[
      OrderStatusTrackingEntity(
        orderStatus: 5,
        actionDate: '2023-09-18T11:36:14.519Z',
      ),
      OrderStatusTrackingEntity(
        orderStatus: 4,
        actionDate: '2023-09-18T11:36:14.519Z',
      ),
      OrderStatusTrackingEntity(
        orderStatus: 3,
        actionDate: '2023-09-18T11:36:14.519Z',
      ),
      OrderStatusTrackingEntity(
        orderStatus: 2,
        actionDate: '2023-09-18T11:36:14.519Z',
      ),
      OrderStatusTrackingEntity(
        orderStatus: 1,
        actionDate: '2023-09-18T11:36:14.519Z',
      ),
      OrderStatusTrackingEntity(
        orderStatus: 0,
        actionDate: '2023-09-18T11:36:14.519Z',
      ),
    ];
    return list;
  }
}
