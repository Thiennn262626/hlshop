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
  OrderDataEntity toEntity() {
    return OrderDataEntity(
      object: this,
      id: orderID,
      orderCode: orderCode,
      distributorEntity: DistributorEntity(
        object: this,
        id: sellerID,
        name: sellerContactFullName ?? sellerBusinessName,
      ),
      orderProductList: dataOrderItem?.mapAsList(
            (item) => OrderProductEntity(
              object: this,
              orderItemID: item.orderItemID,
              productEntity: item.toProductEntity(),
              images: item.medias?.mapAsList((e) => e.toEntity()) ?? [],
              quantity: item.quantity,
              price: item.price,
              priceBefore: item.priceBefore,
              productCartAttribute: item.attribute?.mapAsList(
                    (e) => ProductAttributeEntity(
                      id: e.attributeID,
                      name: e.locAttributeName,
                      object: e,
                    ),
                  ) ??
                  [],
            ),
          ) ??
          [],
      userAddressEntity: UserAddressEntity(
        object: this,
        id: receiverAddresse?.receiverAddressID,
        fullName: receiverAddresse?.receiverContactName,
        phone: receiverAddresse?.receiverPhone,
        fullAddress: receiverAddresse?.addressString,
        addressType: AddressType.other,
        city: CityEntity(
          object: this,
          id: receiverAddresse?.cityID,
          name: receiverAddresse?.cityName,
        ),
        district: DistrictEntity(
          object: this,
          id: receiverAddresse?.districtID,
          name: receiverAddresse?.districtName,
        ),
      ),
    );
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
