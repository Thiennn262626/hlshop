import 'package:hlshop/app/features/user/self.dart';

abstract class AddressRepo {
  Future<List<UserEmailEntity>> getEmailInfo({
    String? search,
    int? offset,
    int? limit,
  });

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

  Future<List<WardEntity>> getWardInfo({
    required String districtID,
    String? search,
    int? offset,
    int? limit,
  });
}
