import 'package:json_annotation/json_annotation.dart';

part 'base_checkout_model.g.dart';

@JsonSerializable()
class MsCreateOrderRq {
  final String? receiverAddressID;
  final int? paymentMethod;
  final List<Sellers>? sellers;

  const MsCreateOrderRq({
    this.receiverAddressID,
    this.paymentMethod,
    this.sellers,
  });

  factory MsCreateOrderRq.fromJson(Map<String, dynamic> json) =>
      _$MsCreateOrderRqFromJson(json);

  Map<String, dynamic> toJson() => _$MsCreateOrderRqToJson(this);
}

@JsonSerializable()
class Sellers {
  final String? sellerID;
  final List<Carts>? carts;

  const Sellers({
    this.sellerID,
    this.carts,
  });

  factory Sellers.fromJson(Map<String, dynamic> json) =>
      _$SellersFromJson(json);

  Map<String, dynamic> toJson() => _$SellersToJson(this);
}

@JsonSerializable()
class Carts {
  final String? cartID;

  const Carts({
    this.cartID,
  });

  factory Carts.fromJson(Map<String, dynamic> json) => _$CartsFromJson(json);

  Map<String, dynamic> toJson() => _$CartsToJson(this);
}
