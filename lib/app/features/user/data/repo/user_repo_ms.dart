import 'package:hlshop/all_file/all_file.dart';

class UserRepoMS implements UserRepo {
  UserRepoMS({UserApiMS? userApiMS}) {
    _userApiMS = userApiMS ?? getIt<UserApiMS>();
  }

  late final UserApiMS _userApiMS;

  @override
  Future<UserEntity> getUserInfo() async {
    try {
      final rs = await _userApiMS.getUserProfile();
      if (rs == null) {
        throw Exception('Không tìm thấy thông tin người dùng'.tr());
      }
      return rs.toEntity();
    } catch (e) {
      log(e.toString(), error: e);
      return Future.error(e);
    }
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
        receiverEmailID: address.receiverEmail?.id,
        cityName: address.city?.name,
        cityID: address.city?.id,
        districtName: address.district?.name,
        districtID: address.district?.id,
        wardID: address.ward?.id,
        wardName: address.ward?.name,
        addressDetail: address.fullAddress,
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
        receiverEmailID: address.receiverEmail?.id,
        cityName: address.city?.name,
        cityID: address.city?.id,
        districtID: address.district?.id,
        districtName: address.district?.name,
        wardID: address.ward?.id,
        wardName: address.ward?.name,
        addressDetail: address.fullAddress,
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
      throw Exception('Cập nhật thất bại'.tr());
    }
    return Future.value(true);
  }

  @override
  Future<Object> updateCover({File? cover}) async {
    final rs = await _userApiMS.updateCoverImage(file_cover: cover);
    if (rs == null) {
      throw Exception('Cập nhật thất bại'.tr());
    }
    return Future.value(true);
  }

  @override
  Future<Object> addPhone({required String phone}) async {
    final rs = await _userApiMS.addPhone(
      MsAddPhoneReq(
        phoneLabel: 0,
        phoneNo: phone,
      ),
    );
    return Future.value(rs);
  }

  @override
  Future<Object> updatePhone({required UserPhoneEntity phone}) async {
    final rs = await _userApiMS.updatePhone(
      MsPhone(
        phoneID: phone.id,
        phoneNo: phone.phone,
        phoneLabel: 0, // TODO: change later
        isDefault: phone.isDefault,
      ),
    );
    return Future.value(rs);
  }

  @override
  Future<Object> verifyPhone({
    required Object? addResultObject,
    required String otp,
  }) async {
    if (addResultObject is MsAddPhoneResultWrapper) {
      final rs = await _userApiMS.verifyPhone(
        MsVerifyPhoneReq(
          phoneID: addResultObject.result?.phoneID,
          uuid: addResultObject.result?.uuid,
          otp: otp,
        ),
      );
      return Future.value(rs);
    }
    return Future.error('Không thể xác thực số điện thoại'.tr());
  }

  @override
  Future<Object> resendPhoneOtp({required Object? addResultObject}) async {
    if (addResultObject is MsAddPhoneResultWrapper) {
      final rs = await _userApiMS.resendPhoneOtp(
        MsResendPhoneReq(
          phoneID: addResultObject.result?.phoneID,
        ),
      );
      return Future.value(rs);
    }
    return Future.error('Không thể gửi lại mã OTP'.tr());
  }

  @override
  Future<Object?> deletePhone({required UserPhoneEntity phone}) async {
    final rs = await _userApiMS.deletePhone(
      MsPhone(
        phoneID: phone.id,
      ),
    );
    return Future.value(true);
  }

  @override
  Future<Object> addEmail({required String email}) async {
    final rs = await _userApiMS.addEmail(
      MsAddEmailReq(
        emailLabel: 0,
        emailAddress: email,
      ),
    );
    return Future.value(rs);
  }

  @override
  Future<Object> updateEmail({required UserEmailEntity email}) async {
    final rs = await _userApiMS.updateEmail(
      MsEmail(
        emailID: email.id,
        emailAddress: email.emailAddress,
        emailLabel: 0, // TODO: change later
        isDefault: email.isDefault,
      ),
    );
    return Future.value(rs);
  }

  @override
  Future<Object> verifyEmail({
    required Object? addResultObject,
    required String otp,
  }) async {
    if (addResultObject is MsAddEmailResultWrapper) {
      final rs = await _userApiMS.verifyEmail(
        MsVerifyEmailReq(
          emailID: addResultObject.result?.emailID,
          uuid: addResultObject.result?.uuid,
          otp: otp,
        ),
      );
      return Future.value(rs);
    }
    return Future.error('Không thể xác thực số điện thoại'.tr());
  }

  @override
  Future<Object> resendEmailOtp({required Object? addResultObject}) async {
    if (addResultObject is MsAddEmailResultWrapper) {
      final rs = await _userApiMS.resendEmailOtp(
        MsResendEmailReq(
          emailID: addResultObject.result?.emailID,
        ),
      );
      return Future.value(rs);
    }
    return Future.error('Không thể gửi lại mã OTP'.tr());
  }

  @override
  Future<Object?> deleteEmail({required UserEmailEntity email}) async {
    final rs = await _userApiMS.deleteEmail(
      MsEmail(
        emailID: email.id,
      ),
    );
    return Future.value(true);
  }
}
