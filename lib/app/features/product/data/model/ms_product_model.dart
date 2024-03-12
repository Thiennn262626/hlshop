import 'package:hlshop/all_file/all_file.dart';

part 'ms_product_convert.dart';
part 'ms_product_model.g.dart';

@JsonSerializable()
class MsProduct {
  final String? productID;
  final String? localizedProductID;
  final String? productName;
  final String? productDescription; // mô tả
  final String? productNotes; // ghi chú
  final String? productSlogan; //ghi chú ngắn
  final String? productMadeIn; // xuất xứ
  final String? productUses; // mục đích sử dụng
  final String? productIngredient; // thành phần
  final String? productObjectsOfUse; // đối tượng sử dụng
  final String? productPreserve; // bảo quản
  final String? productInstructionsForUse; // cách sử dụng
  final int? productHeight;
  final int? productWidth;
  final int? productLength;
  final int? productWeight;
  final List<MsMedia>? medias;
  final MsProductCategory? productCategory;
  final MsSellerModel? seller;
  final List<MsProductSku>? productSKU;
  final String? localizedProductVersionID;

  const MsProduct({
    this.productID,
    this.localizedProductID,
    this.productName,
    this.productDescription,
    this.productNotes,
    this.productSlogan,
    this.productMadeIn,
    this.productUses,
    this.productIngredient,
    this.productObjectsOfUse,
    this.productPreserve,
    this.productInstructionsForUse,
    this.productHeight,
    this.productWidth,
    this.productLength,
    this.productWeight,
    this.medias,
    this.productCategory,
    this.seller,
    this.productSKU,
    this.localizedProductVersionID,
  });

  factory MsProduct.fromJson(Map<String, dynamic> json) =>
      _$MsProductFromJson(json);

  Map<String, dynamic> toJson() => _$MsProductToJson(this);
}
