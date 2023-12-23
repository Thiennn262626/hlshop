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
  final List<Carts>? carts;

  const GetOrderShippingFeeRq({
    this.receiverAddressID,
    this.insuranceValue,
    this.carts,
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

@JsonSerializable()
class MsCreateOrderRes {
  final String? message;
  final MsCreateOrderResResult? result;
  final int? status;
  const MsCreateOrderRes({
    this.message,
    this.result,
    this.status,
  });
  factory MsCreateOrderRes.fromJson(Map<String, dynamic> json) =>
      _$MsCreateOrderResFromJson(json);

  Map<String, dynamic> toJson() => _$MsCreateOrderResToJson(this);

  CreateOrderResEntity toEntity() {
    return CreateOrderResEntity(
      orderID: result?.orderIDs,
    );
  }
}

@JsonSerializable()
class MsCreateOrderResResult {
  final String? orderIDs;
  const MsCreateOrderResResult({
    this.orderIDs,
  });

  factory MsCreateOrderResResult.fromJson(Map<String, dynamic> json) =>
      _$MsCreateOrderResResultFromJson(json);

  Map<String, dynamic> toJson() => _$MsCreateOrderResResultToJson(this);
}

@JsonSerializable()
class MSCreaQRMoMoRes {
  final String? orderId;
  final String? createdLink;
  final String? deeplink;
  const MSCreaQRMoMoRes({
    this.orderId,
    this.createdLink,
    this.deeplink,
  });

  factory MSCreaQRMoMoRes.fromJson(Map<String, dynamic> json) =>
      _$MSCreaQRMoMoResFromJson(json);

  Map<String, dynamic> toJson() => _$MSCreaQRMoMoResToJson(this);

  QRMoMoEntity toEntity() {
    return QRMoMoEntity(
      qrMoMo: deeplink,
      orderID: orderId,
      createdDate: createdLink,
    );
  }
}
