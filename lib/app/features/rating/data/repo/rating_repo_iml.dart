import 'package:hlshop/all_file/all_file.dart';

class RatingRepoIml extends RatingRepo {
  @override
  Future<RatingEntity> getRatingByProduct({
    required String productId,
    int? type,
    int? filter,
    int? offset,
    int? limit,
  }) {
    // TODO: implement getRatingByProduct
    throw UnimplementedError();
  }

  @override
  Future<RatingEntity> getRatingByUser() {
    // TODO: implement getRatingByUser
    throw UnimplementedError();
  }
}
