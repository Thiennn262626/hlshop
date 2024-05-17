import 'package:hlshop/all_file/all_file.dart';

class RatingRepoIml extends RatingRepo {
  final _api = getIt<RatingApi>();

  @override
  Future<RatingEntity?> getRatingByProduct({
    required String productId,
    int? type,
    int? filter,
    int? offset,
    int? limit,
  }) async {
    try {
      final rs = await _api.getRatingByProduct(
        productId: productId,
        type: type,
        filter: filter,
        offset: offset,
        limit: limit,
      );

      return rs?.toEntity();
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<List<RatingItemEntity>> getRatingByUser(
    int? offset,
    int? limit,
  ) async {
    try {
      return _api
          .getRatingByUser(
            offset: offset,
            limit: limit,
          )
          .then(
            (value) => value?.toEntity().ratingItems ?? [],
          );
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<ImageEntity> uploadImage({
    required File file,
  }) {
    try {
      return _api.uploadImage(file: file).then(
            (value) => value?.toEntity() ?? const ImageEntity(),
          );
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<bool> create(
      {required RatingOrderReqEntity ratingOrderReqEntity}) async {
    try {
      await _api.create(
        req: ratingOrderReqEntity.toModel(),
      );
      return true;
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<List<RatingItemEntity>> getRatingByOrder({
    required String orderId,
    int? offset,
    int? limit,
  }) async {
    try {
      return _api
          .getRatingByOrder(
            orderId: orderId,
            offset: offset,
            limit: limit,
          )
          .then((value) => value?.toEntity().ratingItems ?? []);
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<bool> update({required OrderItemEntity orderItemEntity}) {
    try {
      return _api
          .update(
            req: RatingItemModel(
              ratingId: orderItemEntity.id,
              comment: orderItemEntity.comment,
              detailedRating: DetailRatingModel(
                productQuality: orderItemEntity.detailRating?.productQuality,
                sellerService: orderItemEntity.detailRating?.sellerService,
                driverService: orderItemEntity.detailRating?.driverService,
                deliveryService: orderItemEntity.detailRating?.deliveryService,
              ),
              images: orderItemEntity.images?.mapAsList((e) => e.src ?? ''),
            ),
          )
          .then((value) => true);
    } catch (e) {
      return Future.error(e);
    }
  }
}
