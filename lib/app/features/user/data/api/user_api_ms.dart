import 'package:dio/dio.dart';
import 'package:hlshop/all_file/all_file.dart';

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

  @POST('/api/hlshop/users/profile/phone-update')
  Future<MsAddPhoneResultWrapper> updatePhone(
    @Body() MsPhone deletePhoneReq,
  );

  @POST('/api/hlshop/users/profile/phone-verify')
  Future<dynamic> verifyPhone(
    @Body() MsVerifyPhoneReq body,
  );

  @POST('/api/hlshop/users/profile/phone-resend-otp')
  Future<MsAddPhoneResultWrapper?> resendPhoneOtp(
    @Body() MsResendPhoneReq body,
  );

  @POST('/api/hlshop/users/profile/phone-delete')
  Future<dynamic> deletePhone(
    @Body() MsPhone deletePhoneReq,
  );

  @POST('/api/hlshop/users/profile/email-add')
  Future<MsAddEmailResultWrapper?> addEmail(
    @Body() MsAddEmailReq body,
  );

  @POST('/api/hlshop/users/profile/email-update')
  Future<MsAddEmailResultWrapper> updateEmail(
    @Body() MsEmail deleteEmailReq,
  );

  @POST('/api/hlshop/users/profile/email-verify')
  Future<dynamic> verifyEmail(
    @Body() MsVerifyEmailReq body,
  );

  @POST('/api/hlshop/users/profile/email-resend-otp')
  Future<MsAddEmailResultWrapper?> resendEmailOtp(
    @Body() MsResendEmailReq body,
  );

  @POST('/api/hlshop/users/profile/email-delete')
  Future<dynamic> deleteEmail(
    @Body() MsEmail deleteEmailReq,
  );
}
