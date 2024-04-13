import 'package:hlshop/all_file/all_file.dart';

class MsProductCategoryRepo extends ProductCategoryRepo {
  MsProductCategoryRepo({MsProductCategoryApi? productApi}) {
    _api = productApi ?? getIt();
  }

  late final MsProductCategoryApi _api;

  @override
  Future<List<ProductCategoryEntity>> getCategoryList({
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

  @override
  Future<List<ProductCategoryEntity>> getProductCategoryListFilter({
    int? limit,
    int? offset,
    String? id,
  }) {
    return _api
        .getCategoryDetail(
          limit: limit,
          offset: offset,
          productCategoryID: id,
        )
        .then(
          (value) => value?.result.mapAsList((item) => item.toEntity()) ?? [],
        );
  }
}
