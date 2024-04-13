import 'package:hlshop/all_file/all_file.dart';

//  ORDER_STATUS_NEW : 0,
//   ORDER_STATUS_APPROVED : 1,
//   ORDER_STATUS_PACKING : 2,
//   ORDER_STATUS_ON_DELIVERING : 3,
//   ORDER_STATUS_DELIVERY_SUCCESS : 4,
//   ORDER_STATUS_CUSTOMER_CANCELLED : 5,
//   ORDER_STATUS_SELLER_CANCELLED : 6,
//   ORDER_STATUS_RETURNED : 7,
enum OrderStatus {
  newOrder,
  approved,
  packing,
  onDelivering,
  deliverySuccess,
  customerCancelled,
  sellerCancelled,
  returned,
  ;

  String get displayValue {
    switch (this) {
      case OrderStatus.newOrder:
        return 'Chờ duyệt'.tr();
      case OrderStatus.approved:
        return 'Đã duyệt'.tr();
      case OrderStatus.packing:
        return 'Đang đóng gói'.tr();
      case OrderStatus.onDelivering:
        return 'Đang giao hàng'.tr();
      case OrderStatus.deliverySuccess:
        return 'Giao hàng thành công'.tr();
      case OrderStatus.customerCancelled:
        return 'Khách hàng đã hủy'.tr();
      case OrderStatus.sellerCancelled:
        return 'Người bán đã hủy'.tr();
      case OrderStatus.returned:
        return 'Đã trả hàng'.tr();
    }
  }
}

class OrderEntity {
  OrderEntity({
    this.orderItemList,
    this.object,
  });

  final List<OrderDataEntity>? orderItemList;
  final Object? object;
}

class OrderDataEntity {
  OrderDataEntity({
    this.orderProductList,
    this.object,
    this.userAddressEntity,
    this.id,
    this.orderCode,
    this.orderStatus,
    this.paymentMethod,
    this.orderShippingFee,
    this.finishPay,
    this.canFeedback,
  });
  final List<OrderProductEntity>? orderProductList;
  final Object? object;
  final UserAddressEntity? userAddressEntity;
  final String? id;
  final String? orderCode;
  final int? orderStatus;
  final int? paymentMethod;
  final bool? finishPay;
  final bool? canFeedback;
  final OrderShippingFeeEntity? orderShippingFee;
  String? get getOrderStatusTracking {
    switch (orderStatus) {
      case 0:
        return 'Đang Chờ duyệt'.tr();
      case 1:
        return 'Đang chờ đóng gói'.tr();
      case 2:
        return 'Đang đóng gói'.tr();
      case 3:
        return 'Đơn hàng đang giao đến bạn'.tr();
      case 4:
        return 'Giao hàng thành công'.tr();
      case 5:
        return 'Khách hàng đã hủy'.tr();
      case 6:
        return 'Người bán đã hủy'.tr();
      case 7:
        return 'Đã trả hàng'.tr();
    }
    return null;
  }

  PriceUnit get totalPriceItem {
    return orderProductList?.fold(
          PriceUnit.zero,
          (previousValue, element) =>
              (previousValue ?? PriceUnit.zero) +
              (element.price ?? PriceUnit.zero) *
                  (element.quantity.toPriceUnit),
        ) ??
        PriceUnit.zero;
  }

  PriceUnit get totalPriceOrder {
    return orderProductList?.fold(
          orderShippingFee?.shippingFee ?? PriceUnit.zero,
          (previousValue, element) =>
              (previousValue ?? PriceUnit.zero) +
              (element.price ?? PriceUnit.zero) *
                  (element.quantity.toPriceUnit),
        ) ??
        PriceUnit.zero;
  }
}

class OrderProductEntity {
  OrderProductEntity({
    this.orderItemID,
    this.quantity,
    this.price,
    this.priceBefore,
    this.variant,
    this.productEntity,
    this.object,
  });

  final String? orderItemID;
  final ProductEntity? productEntity;
  final int? quantity;
  final PriceUnit? price;
  final PriceUnit? priceBefore;

  final ProductVariantEntity? variant;
  final Object? object;

  static OrderProductEntity demo() {
    return OrderProductEntity(
      orderItemID: 'orderItemID',
      productEntity: ProductEntity.demo(),
      quantity: 1,
      price: PriceUnit(),
      priceBefore: PriceUnit(),
      variant: ProductVariantEntity.demo(),
    );
  }
}
