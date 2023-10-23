import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/domain/entity/common_entity.dart';
import 'package:hlshop/app/features/product/domain/entity/category_entity.dart';

part 'ms_product_category_convert.dart';
part 'ms_product_category_model.g.dart';

@JsonSerializable()
class MsProductCategory {
  final String? productCategoryID;
  final String? productCategoryName;
  final String? linkString;

  const MsProductCategory({
    this.productCategoryID,
    this.productCategoryName,
    this.linkString,
  });

  factory MsProductCategory.fromJson(Map<String, dynamic> json) =>
      _$MsProductCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$MsProductCategoryToJson(this);
}
