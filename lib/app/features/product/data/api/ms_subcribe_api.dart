import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/data/model/ms_product_model.dart';
import 'package:hlshop/app/features/product/data/model/ms_subcribe_model.dart';

part 'ms_subcribe_api.g.dart';

@RestApi()
abstract class MsSubcribeApi {
  factory MsSubcribeApi(Dio dio) = _MsSubcribeApi;

  @GET('/api/hlshop/subcribe/get-list-subcribe')
  Future<MsPagingResult<MsProduct>?> getListSubcribe({
    @Query('offset') int? offset,
    @Query('limit') int? limit,
  });

  @POST('/api/hlshop/subcribe/subcribe')
  Future<void> subcribe({
    @Query('productID') String? productID,
  });

  @POST('/api/hlshop/subcribe/unsubcribe')
  Future<void> unsubcribe({
    @Query('productID') String? productID,
  });

  @GET('/api/hlshop/subcribe/check-subscribe-by-productid')
  Future<MsSubcribeModel?> checkSubcribeByProductID({
    @Query('productID') String? productID,
  });
}
