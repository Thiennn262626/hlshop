import 'package:hlshop/app/features/distributor/domain/entity/distributor_entity.dart';
import 'package:hlshop/app/features/product/domain/entity/category_entity.dart';

abstract class DistributorRepo {
  Future<List<ProductCategoryEntity>> getDistributerListFilter({
    required String? id,
    int? limit,
    int? offset,
  });
}
