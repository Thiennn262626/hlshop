import 'package:hlshop/all_file/all_file.dart';

abstract class ProductCategoryRepo {
  Future<List<ProductCategoryEntity>> getCategoryList({
    int? limit,
    int? offset,
  });

  Future<List<ProductCategoryEntity>> getProductCategoryListFilter({
    int? limit,
    int? offset,
    required String id,
  });
}
