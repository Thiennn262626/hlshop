part of 'base_shopping_cart_model.dart';

extension MsProductCartExt on MsProductCart {
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

  ShoppingCartItemEntity getProductCartItem() {
    return ShoppingCartItemEntity(
      id: cartID,
      product: toEntity(),
      quantity: quantity ?? 0,
      variant: getVariant(),
      object: this,
    );
  }
}

extension MsProductCartAttributeExt on MsProductCartAttribute {
  ProductAttributeEntity getAttribute() {
    return ProductAttributeEntity(
      id: attributeID,
      name: locAttributeName,
      object: this,
    );
  }

  ProductAttributeValueEntity getAttributeValue() {
    return ProductAttributeValueEntity(
      id: attributeValueID,
      name: locAttributeValueName,
      description: locAttributeValueDescription,
      object: this,
    );
  }
}
