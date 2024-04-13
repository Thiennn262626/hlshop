// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ms_product_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsProductAttribute _$MsProductAttributeFromJson(Map<String, dynamic> json) =>
    MsProductAttribute(
      attributeID: json['attributeID'] as String?,
      locAttributeName: json['locAttributeName'] as String?,
      locAttributeDescription: json['locAttributeDescription'] as String?,
      attributeValue: (json['attributeValue'] as List<dynamic>?)
          ?.map((e) => MsAttributeValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MsProductAttributeToJson(MsProductAttribute instance) =>
    <String, dynamic>{
      'attributeID': instance.attributeID,
      'locAttributeName': instance.locAttributeName,
      'locAttributeDescription': instance.locAttributeDescription,
      'attributeValue':
          instance.attributeValue?.map((e) => e.toJson()).toList(),
    };

MsAttributeValue _$MsAttributeValueFromJson(Map<String, dynamic> json) =>
    MsAttributeValue(
      attributeValueID: json['attributeValueID'] as String?,
      locAttributeValueName: json['locAttributeValueName'] as String?,
      locAttributeValueDescription:
          json['locAttributeValueDescription'] as String?,
    );

Map<String, dynamic> _$MsAttributeValueToJson(MsAttributeValue instance) =>
    <String, dynamic>{
      'attributeValueID': instance.attributeValueID,
      'locAttributeValueName': instance.locAttributeValueName,
      'locAttributeValueDescription': instance.locAttributeValueDescription,
    };
