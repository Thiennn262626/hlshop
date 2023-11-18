import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/distributor/domain/entity/distributor_entity.dart';
import 'package:hlshop/app/features/product/self.dart';
import 'package:hlshop/app/features/user/domain/entity/user_base_entity.dart';

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
    this.distributorEntity,
    this.object,
    this.userAddressEntity,
    this.id,
    this.orderCode,
  });

  final DistributorEntity? distributorEntity;
  final List<OrderProductEntity>? orderProductList;
  final Object? object;
  final UserAddressEntity? userAddressEntity;
  final String? id;
  final String? orderCode;

  PriceUnit get totalPrice {
    return orderProductList?.fold(
          PriceUnit.zero,
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
