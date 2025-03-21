import 'package:hlshop/all_file/all_file.dart';

part 'user_order_base_model.g.dart';
part 'user_order_base_model_convert.dart';

//  ORDER_STATUS_NEW : 0,
//   ORDER_STATUS_APPROVED : 1,
//   ORDER_STATUS_PACKING : 2,
//   ORDER_STATUS_ON_DELIVERING : 3,
//   ORDER_STATUS_DELIVERY_SUCCESS : 4,
//   ORDER_STATUS_CUSTOMER_CANCELLED : 5,
//   ORDER_STATUS_SELLER_CANCELLED : 6,
//   ORDER_STATUS_RETURNED : 7,

@JsonEnum(valueField: 'rawValue')
enum MsOrderStatus {
  newOrder(0),
  approved(1),
  packing(2),
  onDelivering(3),
  deliverySuccess(4),
  customerCancelled(5),
  sellerCancelled(6),
  returned(7),
  ;

  const MsOrderStatus(this.rawValue);

  final int rawValue;
  final String translateKey = 'userOrder';
}

@JsonSerializable()
class MsOrder {
  MsOrder({
    this.listOrderItem,
  });

  final List<MsOderGroupData>? listOrderItem;

  factory MsOrder.fromJson(Map<String, dynamic> json) =>
      _$MsOrderFromJson(json);

  Map<String, dynamic> toJson() => _$MsOrderToJson(this);
}

@JsonSerializable()
class MsOderGroupData {
  MsOderGroupData(
    this.dataOrderItem,
    this.orderCode,
    this.orderID,
    this.paymentMethod,
    this.orderStatus,
    this.receiverAddresse,
    this.orderShippingFee,
    this.finishPay,
    this.canRating,
  );

  final List<MsOrderProduct>? dataOrderItem;
  final String? orderCode;
  final String? orderID;
  final int? paymentMethod;
  final MsOrderStatus? orderStatus;
  final bool? finishPay;
  final bool? canRating;
  final ReceiverAddressesMS? receiverAddresse;
  final OrderShippingFee? orderShippingFee;
  factory MsOderGroupData.fromJson(Map<String, dynamic> json) =>
      _$MsOderGroupDataFromJson(json);

  Map<String, dynamic> toJson() => _$MsOderGroupDataToJson(this);
}

@JsonSerializable()
class MsOrderProduct {
  MsOrderProduct(
    this.orderItemID,
    this.productID,
    this.productName,
    this.productDescription,
    this.productSKUID,
    this.medias,
    this.quantity,
    this.price,
    this.priceBefore,
    this.attribute,
  );

  final String? orderItemID;
  final String? productID;
  final String? productName;
  final String? productDescription;
  final String? productSKUID;
  final List<MsMedia>? medias;
  final int? quantity;
  @JsonKey(fromJson: priceUnitFromAny, toJson: priceUnitToJson)
  final PriceUnit? price;
  @JsonKey(fromJson: priceUnitFromAny, toJson: priceUnitToJson)
  final PriceUnit? priceBefore;
  final List<MsProductCartAttribute>? attribute;

  factory MsOrderProduct.fromJson(Map<String, dynamic> json) =>
      _$MsOrderProductFromJson(json);

  Map<String, dynamic> toJson() => _$MsOrderProductToJson(this);
}

@JsonSerializable()
class MsOrderTracking {
  MsOrderTracking(
    this.orderStatusTrackingID,
    this.orderID,
    this.orderStatus,
    this.actionDate,
  );

  String? orderStatusTrackingID;
  String? orderID;
  int? orderStatus;
  String? actionDate;

  factory MsOrderTracking.fromJson(Map<String, dynamic> json) =>
      _$MsOrderTrackingFromJson(json);

  Map<String, dynamic> toJson() => _$MsOrderTrackingToJson(this);
}
