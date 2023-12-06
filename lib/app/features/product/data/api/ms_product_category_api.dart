import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/data/model/ms_product_category_model.dart';

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
