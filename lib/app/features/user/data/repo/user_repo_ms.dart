import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/data/mulstore/api/user_api_ms.dart';
import 'package:hlshop/app/features/user/data/mulstore/model/add_receiver_address_model.dart';
import 'package:hlshop/app/features/user/data/mulstore/model/delete_receiver_address_model.dart';
import 'package:hlshop/app/features/user/data/mulstore/model/update_contact_name_model.dart';
import 'package:hlshop/app/features/user/data/mulstore/model/update_receiver_address_model.dart';
import 'package:hlshop/app/features/user/data/mulstore/model/user_receiver_address_model_ms.dart';
import 'package:hlshop/app/features/user/domain/entity/user_base_entity.dart';
import 'package:hlshop/app/features/user/domain/repo/user_repo.dart';

class UserRepoMS implements UserRepo {
  UserRepoMS({UserApiMS? userApiMS}) {
    _userApiMS = userApiMS ?? getIt<UserApiMS>();
  }

  late final UserApiMS _userApiMS;

  @override
  Future<UserEntity> getUserInfo() async {
    final rs = await _userApiMS.getUserProfile();
    if (rs == null) {
      throw Exception('Không tìm thấy thông tin người dùng'.tr());
    }
    return rs.toEntity();
  }

  @override
  Future<List<UserAddressEntity>> getUserAddressList({
    int? limit,
    int? offset,
  }) async {
    return _userApiMS
        .getListAddress(
          limit: limit,
          offset: offset,
        )
        .then(
          (value) =>
              value?.receiverAddresses.mapAsList(
                (item) => item.toEntity(),
              ) ??
              [],
        );
  }

  @override
  Future<AddReceiverAddressEntity?> addAddress({
    required UserAddressEntity address,
  }) async {
    final rs = await _userApiMS.addReceiverAddres(
      AddReceiverAddressMS(
        receiverContactName: address.fullName,
        receiverPhone: address.phone,
        cityID: address.city?.id,
        districtID: address.district?.id,
        addressString: address.fullAddress,
        addressLabel: address.addressType?.toModel().rawValue,
      ),
    );
    return Future.value(
      rs?.toEntity(),
    );
  }

  @override
  Future<AddReceiverAddressEntity?> updateAddress({
    required String addressId,
    required UserAddressEntity address,
  }) async {
    final rs = await _userApiMS.updateAddress(
      UpdateReceiverAddressMS(
        receiverAddressID: addressId,
        receiverContactName: address.fullName,
        receiverPhone: address.phone,
        cityID: address.city?.id,
        districtID: address.district?.id,
        addressString: address.fullAddress,
        addressLabel: address.addressType?.toModel().rawValue,
      ),
    );
    return Future.value(
      rs?.toEntity(),
    );
  }

  @override
  Future<AddReceiverAddressEntity?> deleteAddress({
    required String? addressId,
  }) async {
    final rs = await _userApiMS.deleteAddress(
      DeleteReceiverAddressMS(
        receiverAddressID: addressId,
      ),
    );
    return Future.value(
      rs?.toEntity(),
    );
  }

  @override
  Future<UserAddressEntity?> getDefaultShippingAddress() async {
    return _userApiMS
        .getListAddress(
          limit: 1,
        )
        .then(
          (value) => value?.receiverAddresses.firstOrNull?.toEntity(),
        );
  }

  @override
  Future<AddReceiverAddressEntity?> addDefaultShippingAddress({
    required String? addressId,
  }) async {
    final rs = await _userApiMS.addDefault(
      MSAddDefaultAddress(
        receiverAddressID: addressId,
      ),
    );
    return null;
  }

  @override
  Future<List<UserPhoneEntity>> getListPhone({int? limit, int? offset}) {
    return Future.value(
      List.generate(5, (index) => UserPhoneEntity.demo()).toList(),
    );
  }

  @override
  Future<Object> updateContactName({required String contactFullName}) async {
    final rs = await _userApiMS.updateContactName(
      UpdateContactNameMS(
        contactFullName: contactFullName,
      ),
    );
    if (rs == null) {
      throw Exception('Cap nhat thong tin that bai'.tr());
    }
    return Future.value(true);
  }

  @override
  Future<Object> updateAvatar({File? avatar}) async {
    final rs = await _userApiMS.updateAvatarImage(file_avatar: avatar);
    if (rs == null) {
      throw Exception('Cap nhat thong tin that bai'.tr());
    }
    return Future.value(true);
  }

  @override
  Future<Object> updateCover({File? cover}) async {
    final rs = await _userApiMS.updateCoverImage(file_cover: cover);
    if (rs == null) {
      throw Exception('Cap nhat thong tin that bai'.tr());
    }
    return Future.value(true);
  }
}
