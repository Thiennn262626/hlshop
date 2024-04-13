import 'package:hlshop/all_file/all_file.dart';

part 'ms_product_category_api.g.dart';

@RestApi()
abstract class MsProductCategoryApi {
  factory MsProductCategoryApi(Dio dio) = _MsProductCategoryApi;

  @GET('/api/hlshop/product-category/get-list')
  Future<MsPagingResult<MsProductCategory>?> getCategoryList({
    @Query('offset') int? offset,
    @Query('limit') int? limit,
  });

  @GET('/api/hlshop/product-category/detail')
  Future<MsPagingResult<MsProductCategory>?> getCategoryDetail({
    @Query('productCategoryID') String? productCategoryID,
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('search') String? search,
  });
}
