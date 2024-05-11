import 'package:hlshop/all_file/all_file.dart';part 'rating_order_req_model.g.dart';@JsonSerializable()class RatingOrderReqModel {  @JsonKey(name: 'order_id')  final String? orderId;  @JsonKey(name: 'order_items')  final List<OrderItemModel>? orderItems;  const RatingOrderReqModel({    this.orderId,    this.orderItems,  });  factory RatingOrderReqModel.fromJson(Map<String, dynamic> json) =>      _$RatingOrderReqModelFromJson(json);  Map<String, dynamic> toJson() => _$RatingOrderReqModelToJson(this);}@JsonSerializable()class OrderItemModel {  @JsonKey(name: 'order_item_id')  final String? orderItemId;  final String? comment;  @JsonKey(name: 'detailed_rating')  final DetailedRatingModel? detailedRating;  @JsonKey(name: 'images_id')  final List<String>? imagesId;  const OrderItemModel({    this.orderItemId,    this.comment,    this.detailedRating,    this.imagesId,  });  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>      _$OrderItemModelFromJson(json);  Map<String, dynamic> toJson() => _$OrderItemModelToJson(this);}@JsonSerializable()class DetailedRatingModel {  @JsonKey(name: 'product_quality')  final int? productQuality;  @JsonKey(name: 'seller_service')  final int? sellerService;  @JsonKey(name: 'delivery_service')  final int? deliveryService;  @JsonKey(name: 'driver_service')  final int? driverService;  const DetailedRatingModel({    this.productQuality,    this.sellerService,    this.deliveryService,    this.driverService,  });  factory DetailedRatingModel.fromJson(Map<String, dynamic> json) =>      _$DetailedRatingModelFromJson(json);  Map<String, dynamic> toJson() => _$DetailedRatingModelToJson(this);}extension RatingOrderReqEntityConverter on RatingOrderReqEntity {  RatingOrderReqModel toModel() {    return RatingOrderReqModel(      orderId: orderID,      orderItems: orderItemEntity?.map((e) => e.toModel()).toList(),    );  }}extension OrderItemEntityConverter on OrderItemEntity {  OrderItemModel toModel() {    return OrderItemModel(      orderItemId: id,      comment: comment,      detailedRating: detailRating?.toModel(),      imagesId: images?.map((e) => e.id ?? '').toList(),    );  }}extension DetailRatingConverter on DetailRating {  DetailedRatingModel toModel() {    return DetailedRatingModel(      productQuality: productQuality,      sellerService: sellerService,      deliveryService: deliveryService,      driverService: driverService,    );  }}