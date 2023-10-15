import 'package:hlshop/app/features/user/self.dart';

abstract class AddressRepo {
  Future<List<CityEntity>> getCityInfo({
    String? search,
    int? offset,
    int? limit,
  });

  Future<List<DistrictEntity>> getDistrictInfo({
    required String cityID,
    String? search,
    int? offset,
    int? limit,
  });

}
