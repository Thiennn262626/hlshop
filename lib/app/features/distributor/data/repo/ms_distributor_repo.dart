import 'package:hlshop/all_file/all_file.dart';

class MSDistributorRepo extends DistributorRepo {
  late final MsProductCategoryApi _api;

  @override
  Future<List<ProductCategoryEntity>> getDistributerListFilter({
    required String? id,
    int? limit,
    int? offset,
  }) {
    return _api
        .getCategoryList(
          limit: limit,
          offset: offset,
        )
        .then(
          (value) => value?.result.mapAsList((item) => item.toEntity()) ?? [],
        );
  }
}
