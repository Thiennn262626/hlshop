import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/data/model/ms_product_attribute.dart';
import 'package:hlshop/app/features/product/data/model/ms_product_model.dart';
import 'package:hlshop/app/features/product/data/model/ms_product_sku_result.dart';

part 'ms_product_api.g.dart';

@RestApi()
abstract class MsProductApi {
  factory MsProductApi(Dio dio) = _MsProductApi;

  @GET('/api/hlshop/product/get-list-hot')
  Future<MsPagingResult<MsProduct>?> getListHot({
    @Query('offset') int? offset,
    @Query('limit') int? limit,
  });

  @GET('/api/hlshop/product/get-list-best-seller')
  Future<MsPagingResult<MsProduct>?> getListBestSell({
    @Query('offset') int? offset,
    @Query('limit') int? limit,
  });

  @GET('/api/hlshop/product/get-list-good-price-today')
  Future<MsPagingResult<MsProduct>?> getListGoodPrice({
    @Query('offset') int? offset,
    @Query('limit') int? limit,
  });

  @GET('/api/hlshop/product/get-list-new')
  Future<MsPagingResult<MsProduct>?> getListNew({
    @Query('offset') int? offset,
    @Query('limit') int? limit,
  });

  @GET('/api/hlshop/product/get-detail')
  Future<MsProduct?> getProductDetail({
    @Query('ProductID') String? productID,
  });

  @GET('/api/hlshop/product/get-list-same-category')
  Future<MsPagingResult<MsProduct>?> getProductSameCategory({
    @Query('productID') String? productID,
    @Query('productCategoryID') String? productCategoryID,
    @Query('offset') int? offset,
    @Query('limit') int? limit,
  });

  @GET('/api/hlshop/product/get-list-same-seller')
  Future<MsPagingResult<MsProduct>?> getProductSameSeller({
    @Query('productID') String? productID,
    @Query('sellerID') String? sellerID,
    @Query('offset') int? offset,
    @Query('limit') int? limit,
  });

  @GET('/api/hlshop/product/get-product-attribute')
  Future<List<MsProductAttribute>?> getProductAttributeList({
    @Query('productID') String? productID,
  });

  @GET('/api/hlshop/product/get-product-sku-by-product-id')
  Future<MsProductSkuResult?> getProductSKUList({
    @Query('productID') String? productID,
  });

  @GET('/api/hlshop/product-category/detail')
  Future<MsPagingResult<MsProduct>?> getCategoryDetail(
      {@Query('productCategoryID') String? productCategoryID,
      @Query('offset') int? offset,
      @Query('limit') int? limit});
}
