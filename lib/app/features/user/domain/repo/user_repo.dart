import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/self.dart';

abstract class UserRepo {
  Future<UserEntity> getUserInfo();

  Future<List<UserAddressEntity>> getUserAddressList({
    int? limit,
    int? offset,
  });

  Future<AddReceiverAddressEntity?> addAddress({
    required UserAddressEntity address,
  });

  Future<AddReceiverAddressEntity?> updateAddress({
    required String addressId,
    required UserAddressEntity address,
  });

  Future<AddReceiverAddressEntity?> deleteAddress({
    required String? addressId,
  });

  Future<UserAddressEntity?> getDefaultShippingAddress();

  Future<AddReceiverAddressEntity?> addDefaultShippingAddress({
    required String? addressId,
  });

  Future<List<UserPhoneEntity>> getListPhone({
    int? limit,
    int? offset,
  });

  Future<Object> updateContactName({
    required String contactFullName,
  });

  Future<Object> updateCover({
    File? cover,
  });

  Future<Object> updateAvatar({
    File? avatar,
  });
}
