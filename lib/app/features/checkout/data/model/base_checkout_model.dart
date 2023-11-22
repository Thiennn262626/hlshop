import 'package:json_annotation/json_annotation.dart';

part 'base_checkout_model.g.dart';

@JsonSerializable()
class MsCreateOrderRq {
  final String? receiverAddressID;
  final int? paymentMethod;
  final List<Carts>? carts;

  const MsCreateOrderRq({
    this.receiverAddressID,
    this.paymentMethod,
    this.carts,
  });

  factory MsCreateOrderRq.fromJson(Map<String, dynamic> json) =>
      _$MsCreateOrderRqFromJson(json);

  Map<String, dynamic> toJson() => _$MsCreateOrderRqToJson(this);
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
