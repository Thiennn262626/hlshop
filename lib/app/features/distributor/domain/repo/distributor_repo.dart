import 'package:hlshop/all_file/all_file.dart';

abstract class DistributorRepo {
  Future<List<ProductCategoryEntity>> getDistributerListFilter({
    required String? id,
    int? limit,
    int? offset,
  });
}
