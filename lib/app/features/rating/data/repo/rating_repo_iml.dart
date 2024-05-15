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
  Future<RatingEntity> getRatingByUser() {
    // TODO: implement getRatingByUser
    throw UnimplementedError();
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
}
