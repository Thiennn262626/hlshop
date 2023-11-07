import 'package:hlshop/app/common/core/unit/price_unit.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ms_product_sku_result.g.dart';

@JsonSerializable()
class MsProductSkuResult {
  final String? productID;
  final List<MsProductSku>? productSKU;

  const MsProductSkuResult({
    this.productID,
    this.productSKU,
  });

  factory MsProductSkuResult.fromJson(Map<String, dynamic> json) =>
      _$MsProductSkuResultFromJson(json);

  Map<String, dynamic> toJson() => _$MsProductSkuResultToJson(this);
}

@JsonSerializable()
class MsProductSku {
  final String? productSKUID;
  final String? linkString;
  @JsonKey(fromJson: priceUnitFromAny, toJson: priceUnitToJson)
  final PriceUnit? price;
  @JsonKey(fromJson: priceUnitFromAny, toJson: priceUnitToJson)
  final PriceUnit? priceBefore;
  final List<MsProductSkuValue>? attribute;

  final MsPackingUnit? packingUnit;
  final MsPackingSize? packingSize;
  final MsSaleUnit? saleUnit;
  final MsSaleSize? saleSize;

  const MsProductSku({
    this.productSKUID,
    this.linkString,
    this.price,
    this.priceBefore,
    this.attribute,
    this.packingUnit,
    this.packingSize,
    this.saleUnit,
    this.saleSize,
  });

  factory MsProductSku.fromJson(Map<String, dynamic> json) =>
      _$MsProductSkuFromJson(json);

  Map<String, dynamic> toJson() => _$MsProductSkuToJson(this);
}

@JsonSerializable()
class MsProductSkuValue {
  final String? productSKUID;
  final String? attributeID;
  final String? locAttributeName;
  final String? locAttributeDescription;
  final String? attributeValueID;
  final String? locAttributeValueName;
  final String? locAttributeValueDescription;

  const MsProductSkuValue({
    this.productSKUID,
    this.attributeID,
    this.locAttributeName,
    this.locAttributeDescription,
    this.attributeValueID,
    this.locAttributeValueName,
    this.locAttributeValueDescription,
  });

  factory MsProductSkuValue.fromJson(Map<String, dynamic> json) =>
      _$MsProductSkuValueFromJson(json);

  Map<String, dynamic> toJson() => _$MsProductSkuValueToJson(this);
}

@JsonSerializable()
class MsPackingUnit {
  final String? localizedPackingUnitID;
  final String? locPackingUnitName;
  final String? locDescription;

  const MsPackingUnit({
    this.localizedPackingUnitID,
    this.locPackingUnitName,
    this.locDescription,
  });

  factory MsPackingUnit.fromJson(Map<String, dynamic> json) =>
      _$MsPackingUnitFromJson(json);

  Map<String, dynamic> toJson() => _$MsPackingUnitToJson(this);
}

@JsonSerializable()
class MsPackingSize {
  final String? localizedPackingSizeID;
  final String? locPackingSizeName;
  final String? locDescription;

  const MsPackingSize({
    this.localizedPackingSizeID,
    this.locPackingSizeName,
    this.locDescription,
  });

  factory MsPackingSize.fromJson(Map<String, dynamic> json) =>
      _$MsPackingSizeFromJson(json);

  Map<String, dynamic> toJson() => _$MsPackingSizeToJson(this);
}

@JsonSerializable()
class MsSaleUnit {
  final String? localizedSaleUnitID;
  final String? locSaleUnitName;
  final String? locDescription;

  const MsSaleUnit({
    this.localizedSaleUnitID,
    this.locSaleUnitName,
    this.locDescription,
  });

  factory MsSaleUnit.fromJson(Map<String, dynamic> json) =>
      _$MsSaleUnitFromJson(json);

  Map<String, dynamic> toJson() => _$MsSaleUnitToJson(this);
}

@JsonSerializable()
class MsSaleSize {
  final String? localizedSaleSizeID;
  final String? locSaleSizeName;
  final String? locDescription;

  const MsSaleSize({
    this.localizedSaleSizeID,
    this.locSaleSizeName,
    this.locDescription,
  });

  factory MsSaleSize.fromJson(Map<String, dynamic> json) =>
      _$MsSaleSizeFromJson(json);

  Map<String, dynamic> toJson() => _$MsSaleSizeToJson(this);
}
