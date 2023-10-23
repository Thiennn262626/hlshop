part of 'ms_product_model.dart';

extension MsProductMapper on MsProduct {
  ProductEntity toEntity() {
    return ProductEntity(
      object: this,
      id: productID.toString(),
      name: productName,
      description: productDescription,
      shortDescription: productSlogan,
      price: productSKU?.firstOrNull?.price,
      type: null,
      listedPrice: productSKU?.firstOrNull?.priceBefore,
      imgList: medias?.map((item) => item.toEntity()).toList(),
      categories: [
        productCategory?.toEntity(),
      ].filterNotNullList(),
      variations: productSKU?.map((item) => item.toEntity()).toList(),
      madeIn: productMadeIn,
      productUses: productUses,
      notes: productNotes,
      distributor: seller?.toEntity(),
    );
  }
}

extension MsProductSKUConvert on MsProductSku {
  ProductVariantEntity toEntity() {
    return ProductVariantEntity(
      id: productSKUID,
      img: linkString.isNullOrEmpty
          ? null
          : ImageEntity(
              src: linkString,
            ),
      title: 'sku-title',
      price: price,
      listedPrice: priceBefore,
      variantValueList: attribute.mapAsList((item) {
        return ProductVariantAttributeEntity(
          attribute: ProductAttributeEntity(
            id: item.attributeID,
            name: item.locAttributeName,
            slug: item.locAttributeName,
            description: item.locAttributeDescription,
          ),
          attributeValue: ProductAttributeValueEntity(
            id: item.attributeValueID,
            name: item.locAttributeValueName,
            description: item.locAttributeValueDescription,
          ),
        );
      }),
      object: this,
    );
  }
}
