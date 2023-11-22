import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/data/api/address_api_ms.dart';
import 'package:hlshop/app/features/user/data/model/address_model_ms.dart';
import 'package:hlshop/app/features/user/domain/entity/address_entity.dart';
import 'package:hlshop/app/features/user/domain/repo/address_repo.dart';

class AddressRepoMs implements AddressRepo {
  AddressRepoMs({AddressApiMS? addressApiMS}) {
    _addressApiMS = addressApiMS ?? getIt<AddressApiMS>();
  }

  late final AddressApiMS _addressApiMS;

  CityEntity _convertCity(MsCity city) {
    return city.toEntity();
  }

  List<CityEntity> _convertListCity(MsCitiesResult? rs) {
    return rs?.cities?.map(_convertCity).toList() ?? [];
  }

  DistrictEntity _convertDistrict(MsDistrict district) {
    return district.toEntity();
  }

  List<DistrictEntity> _convertListDistrict(MsDistrictsResult? rs) {
    return rs?.districts?.map(_convertDistrict).toList() ?? [];
  }

  WardEntity _convertWard(MsWard ward) {
    return ward.toEntity();
  }

  List<WardEntity> _convertListWard(MsWardsResult? rs) {
    return rs?.wards?.map(_convertWard).toList() ?? [];
  }

  @override
  Future<List<CityEntity>> getCityInfo(
      {String? search, int? offset, int? limit}) async {
    final cities = await _addressApiMS.getCityInfo(
        search: search, offset: offset, limit: limit);

    if (cities != null) {
      return _convertListCity(cities);
    }
    throw Exception('không tìm thấy thành phố');
  }

  @override
  Future<List<DistrictEntity>> getDistrictInfo({
    required String cityID,
    String? search,
    int? offset,
    int? limit,
  }) async {
    final districts = await _addressApiMS.getDistrictsInfo(
      cityID: cityID,
      search: search,
    );
    if (districts != null) {
      return _convertListDistrict(districts);
    }
    throw Exception('không tìm thấy quận');
  }

  @override
  Future<List<WardEntity>> getWardInfo({
    required String districtID,
    String? search,
    int? offset,
    int? limit,
  }) async {
    final wards = await _addressApiMS.getWardsInfo(
      districtID: districtID,
      search: search,
    );
    if (wards != null) {
      return _convertListWard(wards);
    }
    throw Exception('không tìm thấy phường');
  }
}
