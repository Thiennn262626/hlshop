import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/data/model/address_model_ms.dart';

part 'address_api_ms.g.dart';

@RestApi()
abstract class AddressApiMS {
  factory AddressApiMS(Dio dio) = _AddressApiMS;

  @GET('/api/hlshop/cities/get-list')
  Future<MsCitiesResult?> getCityInfo({
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('search') String? search,
  });

  @GET('/api/hlshop/district/get-list-by-city-id')
  Future<MsDistrictsResult?> getDistrictsInfo({
    @Query('cityID') String? cityID,
    @Query('search') String? search,
  });

  @GET('/api/hlshop/ward/get-list-by-district-id')
  Future<MsWardsResult?> getWardsInfo({
    @Query('districtID') String? districtID,
    @Query('search') String? search,
  });
}
