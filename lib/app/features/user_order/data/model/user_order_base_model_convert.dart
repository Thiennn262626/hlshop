part of 'user_order_base_model.dart';

extension MsOrderStatusConvert on MsOrderStatus {
  OrderStatus toOrderStatus() {
    switch (this) {
      case MsOrderStatus.newOrder:
        return OrderStatus.newOrder;
      case MsOrderStatus.approved:
        return OrderStatus.approved;
      case MsOrderStatus.packing:
        return OrderStatus.packing;
      case MsOrderStatus.onDelivering:
        return OrderStatus.onDelivering;
      case MsOrderStatus.deliverySuccess:
        return OrderStatus.deliverySuccess;
      case MsOrderStatus.customerCancelled:
        return OrderStatus.customerCancelled;
      case MsOrderStatus.sellerCancelled:
        return OrderStatus.sellerCancelled;
      case MsOrderStatus.returned:
        return OrderStatus.returned;
    }
  }
}

extension OrderStatusConvert on OrderStatus {
  MsOrderStatus toMsOrderStatus() {
    switch (this) {
      case OrderStatus.newOrder:
        return MsOrderStatus.newOrder;
      case OrderStatus.approved:
        return MsOrderStatus.approved;
      case OrderStatus.packing:
        return MsOrderStatus.packing;
      case OrderStatus.onDelivering:
        return MsOrderStatus.onDelivering;
      case OrderStatus.deliverySuccess:
        return MsOrderStatus.deliverySuccess;
      case OrderStatus.customerCancelled:
        return MsOrderStatus.customerCancelled;
      case OrderStatus.sellerCancelled:
        return MsOrderStatus.sellerCancelled;
      case OrderStatus.returned:
        return MsOrderStatus.returned;
    }
  }
}

extension MsListOderConvert on MsOrder {
  OrderEntity toEntity() {
    return OrderEntity(
      orderItemList: listOrderItem?.mapAsList((item) => item.toEntity()) ?? [],
      object: this,
    );
  }
}

extension MsOderGroupDataConvert on MsOderGroupData {
  ProductVariantEntity getVariant(List<MsProductCartAttribute>? attribute) {
    return ProductVariantEntity(
      variantValueList: attribute?.mapAsList(
            (item) => ProductVariantAttributeEntity(
              attribute: item.getAttribute(),
              attributeValue: item.getAttributeValue(),
            ),
          ) ??
          [],
      object: this,
    );
  }

  OrderDataEntity toEntity() {
    return OrderDataEntity(
        object: this,
        id: orderID,
        orderCode: orderCode,
        orderProductList: dataOrderItem?.mapAsList(
              (item) => OrderProductEntity(
                object: this,
                orderItemID: item.orderItemID,
                productEntity: item.toProductEntity(),
                quantity: item.quantity,
                price: item.price,
                priceBefore: item.priceBefore,
                variant: getVariant(item.attribute),
              ),
            ) ??
            [],
        userAddressEntity: UserAddressEntity(
          object: this,
          fullAddress: receiverAddresse?.addressDetail,
          phone: receiverAddresse?.receiverPhone,
          addressType: receiverAddresse?.addressLabel,
          fullName: receiverAddresse?.receiverContactName,
          id: receiverAddresse?.receiverAddressID,
          district: DistrictEntity(
            object: this,
            name: receiverAddresse?.districtName,
          ),
          city: CityEntity(
            object: this,
            name: receiverAddresse?.cityName,
          ),
        ));
  }
}

//    this.orderItemID,
//     this.productID,
//     this.productName,
//     this.productDescription,
//     this.productSKUID,
//     this.medias,
//     this.quantity,
//     this.price,
//     this.priceBefore,
//     this.attribute,
extension MsProductCartExt on MsOrderProduct {
  ProductEntity toProductEntity() {
    return ProductEntity(
      id: productID,
      name: productName,
      description: productDescription,
      sku: productSKUID,
      imgList: medias.mapAsList((e) => e.toEntity()),
      price: price,
    );
  }

  ProductVariantEntity getVariant() {
    return ProductVariantEntity(
      price: price,
      img: medias?.firstOrNull?.toEntity(),
      variantValueList: attribute?.mapAsList(
            (item) => ProductVariantAttributeEntity(
              attribute: item.getAttribute(),
              attributeValue: item.getAttributeValue(),
            ),
          ) ??
          [],
      object: this,
    );
  }
}

extension MsOrdertracking on MsOrderTracking {
  OrderStatusTrackingEntity toEntity() {
    return OrderStatusTrackingEntity(
      id: orderStatusTrackingID,
      orderId: orderID,
      orderStatus: orderStatus,
      actionDate: actionDate,
      object: this,
    );
  }
}
