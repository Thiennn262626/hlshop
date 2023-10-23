part of 'ms_product_attribute.dart';

extension MsProductAttributeMapper on MsProductAttribute {
  // to ProductAttributeEnity
  ProductAttributeEntity toEntity() {
    return ProductAttributeEntity(
      id: attributeID,
      name: locAttributeName,
      description: locAttributeDescription,
      values: attributeValue?.map((e) => e.toEntity()).toList(),
      object: this,
    );
  }
}

extension MsProductAttributeValueMapper on MsAttributeValue {
  // to ProductAttributeValue
  ProductAttributeValueEntity toEntity() {
    return ProductAttributeValueEntity(
      id: attributeValueID,
      name: locAttributeValueName,
      description: locAttributeValueDescription,
      object: this,
    );
  }
}
