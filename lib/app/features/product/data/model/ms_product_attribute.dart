import 'package:json_annotation/json_annotation.dart';
import 'package:hlshop/app/features/product/self.dart';

part 'ms_product_attribute.g.dart';
part 'ms_product_attribute_convert.dart';

@JsonSerializable(explicitToJson: true)
class MsProductAttribute {
  final String? attributeID;
  final String? locAttributeName;
  final String? locAttributeDescription;
  final List<MsAttributeValue>? attributeValue;

  const MsProductAttribute({
    this.attributeID,
    this.locAttributeName,
    this.locAttributeDescription,
    this.attributeValue,
  });

  factory MsProductAttribute.fromJson(Map<String, dynamic> json) =>
      _$MsProductAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$MsProductAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MsAttributeValue {
  final String? attributeValueID;
  final String? locAttributeValueName;
  final String? locAttributeValueDescription;

  const MsAttributeValue({
    this.attributeValueID,
    this.locAttributeValueName,
    this.locAttributeValueDescription,
  });

  factory MsAttributeValue.fromJson(Map<String, dynamic> json) =>
      _$MsAttributeValueFromJson(json);

  Map<String, dynamic> toJson() => _$MsAttributeValueToJson(this);
}
