import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/checkout/domain/entity/OrderShippingFeeEntity.dart';

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

@JsonSerializable()
class GetOrderShippingFeeRq {
  final String? receiverAddressID;
  final String? insuranceValue;

  const GetOrderShippingFeeRq({
    this.receiverAddressID,
    this.insuranceValue,
  });

  factory GetOrderShippingFeeRq.fromJson(Map<String, dynamic> json) =>
      _$GetOrderShippingFeeRqFromJson(json);

  Map<String, dynamic> toJson() => _$GetOrderShippingFeeRqToJson(this);
}

@JsonSerializable()
class OrderShippingFee {
  @JsonKey(fromJson: priceUnitFromAny, toJson: priceUnitToJson)
  final PriceUnit? shippingFee;

  const OrderShippingFee({
    this.shippingFee,
  });

  factory OrderShippingFee.fromJson(Map<String, dynamic> json) =>
      _$OrderShippingFeeFromJson(json);

  Map<String, dynamic> toJson() => _$OrderShippingFeeToJson(this);

  OrderShippingFeeEntity toEntity() {
    return OrderShippingFeeEntity(
      shippingFee: shippingFee?.value.toPriceUnit,
    );
  }
}
