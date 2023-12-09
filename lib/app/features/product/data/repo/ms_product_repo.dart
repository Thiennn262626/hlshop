import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/data/api/ms_product_api.dart';
import 'package:hlshop/app/features/product/data/api/ms_subcribe_api.dart';
import 'package:hlshop/app/features/product/data/model/ms_product_attribute.dart';
import 'package:hlshop/app/features/product/data/model/ms_product_model.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';
import 'package:hlshop/app/features/product/domain/entity/subcribe_entity.dart';
import 'package:hlshop/app/features/product/domain/repo/product_repo.dart';

class MsProductRepo extends ProductRepo {
  final MsProductApi _api = getIt();
  final MsSubcribeApi _subcribeApi = getIt();
  ProductEntity _convertProduct(MsProduct product) {
    return product.toEntity();
  }

  List<ProductEntity> _convertListProduct(MsPagingResult<MsProduct>? rs) {
    return rs?.result?.map(_convertProduct).toList() ?? [];
  }

  @override
  Future<List<ProductEntity>> getProductList({
    int? offset,
    int? limit,
    String? search,
    int? sortBy,
    ProductListType? type,
    String? minAmount,
    String? maxAmount,
    ProductListShowType? showType,
  }) async {
    switch (type) {
      case ProductListType.hot:
        // if (showType == ProductListShowType.homePage) {
        //   final nextOffset = (offset ?? 0) + (limit ?? 0);
        //   if (nextOffset > 10) {
        //     limit = (offset ?? 0) + 10;
        //   }
        // }

        return _api
            .getListHot(
              offset: offset,
              limit: limit,
              search: search,
              sortBy: sortBy,
              minAmount: minAmount,
              maxAmount: maxAmount,
            )
            .then(_convertListProduct);
      case ProductListType.newest:
        return _api
            .getListNew(
              offset: offset,
              limit: limit,
              search: search,
              sortBy: sortBy,
              minAmount: minAmount,
              maxAmount: maxAmount,
            )
            .then(_convertListProduct);
      case ProductListType.bestSeller:
        return _api
            .getListBestSell(
              offset: offset,
              limit: limit,
              search: search,
              sortBy: sortBy,
              minAmount: minAmount,
              maxAmount: maxAmount,
            )
            .then(_convertListProduct);
      case ProductListType.goodPrice:
        return _api
            .getListGoodPrice(
              offset: offset,
              limit: limit,
              search: search,
              sortBy: sortBy,
              minAmount: minAmount,
              maxAmount: maxAmount,
            )
            .then(_convertListProduct);
      case null:
        return [];
    }
  }

  @override
  Future<ProductEntity> getProductDetail({
    required String? id,
  }) async {
    if (id == null) throw Exception('Không có id sản phẩm');
    final product = await _api.getProductDetail(
      productID: id,
    );
    if (product != null) {
      return _convertProduct(product);
    }
    throw Exception('Không tìm thấy sản phẩm');
  }

  @override
  Future<List<ProductEntity>> getProductListSearch({
    int? limit,
    int? offset,
    ProductFilterData? filterData,
    int? sortBy,
  }) {
    if (filterData?.productCategory != null) {
      return _api
          .getCategoryDetail(
            productCategoryID: filterData?.productCategory?.id,
            offset: offset,
            limit: limit,
            search: filterData?.search,
            sortBy: filterData?.orderByType?.index,
            minAmount: filterData?.minAmount,
            maxAmount: filterData?.maxAmount,
          )
          .then(_convertListProduct);
    }

    return getProductList(
      limit: limit,
      offset: offset,
      search: filterData?.search,
      sortBy: filterData?.orderByType?.index,
      type: filterData?.type,
      showType: filterData?.showType,
      minAmount: filterData?.minAmount,
      maxAmount: filterData?.maxAmount,
    );
  }

  @override
  Future<List<ProductAttributeEntity>> getProductAttribute({
    required String? productId,
  }) async {
    final list = await _api.getProductAttributeList(productID: productId);
    return list.mapAsList((e) => e.toEntity());
  }

  @override
  Future<List<ProductVariantEntity>> getProductVariantList({
    required String? productId,
  }) async {
    final rs = await _api.getProductSKUList(productID: productId);
    return rs?.productSKU.mapAsList((e) => e.toEntity()) ?? [];
  }

  @override
  Future<List<ProductEntity>> getProductListByCategory(
      {required String? id, int? limit, int? offset, String? search}) {
    // TODO: implement getProductListByCategory
    throw UnimplementedError();
  }

  @override
  Future<SubcribeEntity> checkSubcribeByProductID(
      {required String? productID}) {
    return _subcribeApi
        .checkSubcribeByProductID(productID: productID)
        .then((value) => value?.toEntity() ?? SubcribeEntity());
  }

  @override
  Future<List<ProductEntity>> getListSubcribe({int? limit, int? offset}) {
    return _subcribeApi
        .getListSubcribe(
          offset: offset,
          limit: limit,
        )
        .then(_convertListProduct);
  }

  @override
  Future<void> subcribe({required String? productID}) async {
    await _subcribeApi.subcribe(productID: productID);
  }

  @override
  Future<void> unsubcribe({required String? productID}) async {
    await _subcribeApi.unsubcribe(productID: productID);
  }
}
