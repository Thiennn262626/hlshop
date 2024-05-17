// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductItemModel _$ProductItemModelFromJson(Map<String, dynamic> json) =>
    ProductItemModel(
      itemId: json['itemid'] as String?,
      name: json['name'] as String?,
      modelId: json['modelid'] as String?,
      modelName: json['model_name'] as String?,
      modelImage: json['model_image'] as String?,
      modelPrice: priceUnitFromAny(json['model_price']),
    );

Map<String, dynamic> _$ProductItemModelToJson(ProductItemModel instance) =>
    <String, dynamic>{
      'itemid': instance.itemId,
      'name': instance.name,
      'modelid': instance.modelId,
      'model_name': instance.modelName,
      'model_image': instance.modelImage,
      'model_price': priceUnitToJson(instance.modelPrice),
    };
