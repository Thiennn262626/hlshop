import 'package:hlshop/all_file/all_file.dart';

class ProductCategoryEntity {
  const ProductCategoryEntity({
    this.slug,
    this.parent,
    this.display,
    this.menuOrder,
    this.count,
    this.id = '',
    this.imgList,
    this.name,
    this.description,
  });

  final String? id;
  final String? name;
  final String? slug;
  final String? parent;
  final String? description;
  final String? display;
  final List<ImageEntity>? imgList;
  @JsonKey(name: 'menu_order')
  final int? menuOrder;
  final int? count;

  String? get img => imgList.firstOrNull?.src;
}
