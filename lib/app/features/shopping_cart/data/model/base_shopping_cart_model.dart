import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/distributor/domain/entity/distributor_entity.dart';
import 'package:hlshop/app/features/product/self.dart';
import 'package:hlshop/app/features/shopping_cart/seft.dart';

part 'base_shopping_cart_converter.dart';
part 'base_shopping_cart_model.g.dart';

@JsonSerializable()
class MsShoppingCartAddReq {
  final String? productSKUID;
  final int? quantity;

  const MsShoppingCartAddReq({
    this.productSKUID,
    this.quantity,
  });

  factory MsShoppingCartAddReq.fromJson(Map<String, dynamic> json) =>
      _$MsShoppingCartAddReqFromJson(json);

  Map<String, dynamic> toJson() => _$MsShoppingCartAddReqToJson(this);
}

@JsonSerializable()
class MsShoppingCartUpdateReq {
  final String? cartID;
  final int? quantity;

  const MsShoppingCartUpdateReq({
    this.cartID,
    this.quantity,
  });

  factory MsShoppingCartUpdateReq.fromJson(Map<String, dynamic> json) =>
      _$MsShoppingCartUpdateReqFromJson(json);

  Map<String, dynamic> toJson() => _$MsShoppingCartUpdateReqToJson(this);
}

@JsonSerializable()
class MsShoppingCart {
  final String? sellerID;
  final String? sellerContactFullName;
  final String? sellerBusinessName;
  final List<MsProductCart>? dataCart;
  final int? countCart;

  const MsShoppingCart({
    this.sellerID,
    this.sellerContactFullName,
    this.sellerBusinessName,
    this.dataCart,
    this.countCart,
  });

  factory MsShoppingCart.fromJson(Map<String, dynamic> json) =>
      _$MsShoppingCartFromJson(json);

  Map<String, dynamic> toJson() => _$MsShoppingCartToJson(this);
}

@JsonSerializable()
class MsProductCart extends MsProduct {
  final String? cartID;
  final String? productSKUID;
  final int? quantity;
  @JsonKey(fromJson: priceUnitFromAny, toJson: priceUnitToJson)
  final PriceUnit? price;
  @JsonKey(fromJson: priceUnitFromAny, toJson: priceUnitToJson)
  final PriceUnit? priceBefore;
  final List<MsProductCartAttribute>? attribute;

  const MsProductCart({
    this.cartID,
    this.productSKUID,
    super.productID,
    super.productName,
    super.productDescription,
    super.medias,
    this.quantity,
    this.price,
    this.priceBefore,
    this.attribute,
  });

  factory MsProductCart.fromJson(Map<String, dynamic> json) =>
      _$MsProductCartFromJson(json);

  Map<String, dynamic> toJson() => _$MsProductCartToJson(this);
}

@JsonSerializable()
class MsProductCartAttribute {
  final String? localizedAttributeValueID;
  final String? locAttributeValueName;
  final String? locAttributeValueDescription;
  final String? attributeValueID;
  final String? locAttributeName;
  final String? attributeID;

  const MsProductCartAttribute({
    this.localizedAttributeValueID,
    this.locAttributeValueName,
    this.locAttributeValueDescription,
    this.attributeValueID,
    this.locAttributeName,
    this.attributeID,
  });

  factory MsProductCartAttribute.fromJson(Map<String, dynamic> json) =>
      _$MsProductCartAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$MsProductCartAttributeToJson(this);
}
