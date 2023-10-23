import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/data/api/ms_product_category_api.dart';
import 'package:hlshop/app/features/product/data/model/ms_product_category_model.dart';
import 'package:hlshop/app/features/product/domain/entity/category_entity.dart';
import 'package:hlshop/app/features/product/domain/repo/product_category_repo.dart';

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
