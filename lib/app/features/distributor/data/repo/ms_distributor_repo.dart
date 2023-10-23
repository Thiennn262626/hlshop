import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/distributor/domain/repo/distributor_repo.dart';
import 'package:hlshop/app/features/product/data/api/ms_product_category_api.dart';
import 'package:hlshop/app/features/product/data/model/ms_product_category_model.dart';
import 'package:hlshop/app/features/product/domain/entity/category_entity.dart';

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
