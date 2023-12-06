import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';

abstract class ProductRepo {
  Future<List<ProductEntity>> getProductList({
    int? limit,
    int? offset,
    String? search,
    ProductListType? type,
    ProductListShowType? showType,
  });

  Future<ProductEntity?> getProductDetail({
    required String? id,
  });

  Future<List<ProductEntity>> getProductListByCategory({
    required String? id,
    int? limit,
    int? offset,
    String? search,
  });

  Future<List<ProductEntity>> getProductListSearch({
    int? limit,
    int? offset,
    ProductFilterData? filterData,
    int? sortBy,
  });

  Future<List<ProductAttributeEntity>> getProductAttribute({
    required String? productId,
  }) {
    throw UnimplementedError();
  }

  Future<List<ProductVariantEntity>> getProductVariantList({
    required String? productId,
  }) {
    throw UnimplementedError();
  }
}

enum ProductListType {
  hot,
  newest,
  bestSeller,
  goodPrice,
}

enum ProductListShowType {
  all,
  homePage,
}
