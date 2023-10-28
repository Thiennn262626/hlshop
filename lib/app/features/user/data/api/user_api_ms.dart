import 'package:dio/dio.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/data/model/add_receiver_address_model.dart';
import 'package:hlshop/app/features/user/data/model/delete_receiver_address_model.dart';
import 'package:hlshop/app/features/user/data/model/district_model_ms.dart';
import 'package:hlshop/app/features/user/data/model/ms_user_info.dart';
import 'package:hlshop/app/features/user/data/model/update_contact_name_model.dart';
import 'package:hlshop/app/features/user/data/model/update_receiver_address_model.dart';
import 'package:hlshop/app/features/user/data/model/user_city_model_ms.dart';
import 'package:hlshop/app/features/user/data/model/user_model_ms.dart';

import '../model/user_receiver_address_model_ms.dart';

part 'user_api_ms.g.dart';

@RestApi()
abstract class UserApiMS {
  factory UserApiMS(Dio dio) = _UserApiMS;

  @GET('/api/hlshop/users/get-profile')
  Future<UserMS?> getUserProfile();

  @GET('/api/hlshop/receiver-address/get-list')
  Future<ListReceiverAddressesMS?> getListAddress({
    @Query('offset') int? offset,
    @Query('limit') int? limit,
  });

  @POST('/api/hlshop/receiver-address/add')
  Future<ResponseAddReceiverAddressMS?> addReceiverAddres(
    @Body() AddReceiverAddressMS addReceiverAddressMS,
  );

  @POST('/api/hlshop/receiver-address/update')
  Future<ResponseAddReceiverAddressMS?> updateAddress(
    @Body() UpdateReceiverAddressMS updateReceiverAddressMS,
  );

  @POST('/api/hlshop/receiver-address/delete')
  Future<ResponseAddReceiverAddressMS?> deleteAddress(
    @Body() DeleteReceiverAddressMS deleteReceiverAddressMS,
  );

  @POST('/api/hlshop/receiver-address/add-default')
  Future<ResponseAddReceiverAddressMS?> addDefault(
    @Body() MSAddDefaultAddress defaultAddress,
  );

  @POST('/api/hlshop/users/profile/update-contact-name')
  Future<dynamic> updateContactName(
    @Body() UpdateContactNameMS contactFullName,
  );

  @POST('/api/hlshop/users/profile/update-cover')
  Future<dynamic> updateCoverImage({
    @Part() File? file_cover,
  });

  @POST('/api/hlshop/users/profile/update-avatar')
  Future<dynamic> updateAvatarImage({
    @Part() File? file_avatar,
  });

  @POST('/api/hlshop/users/profile/phone-add')
  Future<MsAddPhoneResultWrapper?> addPhone(
    @Body() MsAddPhoneReq body,
  );

  @POST('/api/hlshop/users/profile/phone-verify')
  Future<dynamic> verifyPhone(
    @Body() MsVerifyPhoneReq body,
  );

  @POST('/api/hlshop/users/profile/phone-resend-otp')
  Future<MsAddPhoneResultWrapper?> resendPhoneOtp(
    @Body() MsResendPhoneReq body,
  );
}
