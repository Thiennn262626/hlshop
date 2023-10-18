import 'package:dio/dio.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/data/mulstore/model/add_receiver_address_model.dart';
import 'package:hlshop/app/features/user/data/mulstore/model/delete_receiver_address_model.dart';
import 'package:hlshop/app/features/user/data/mulstore/model/district_model_ms.dart';
import 'package:hlshop/app/features/user/data/mulstore/model/ms_user_info.dart';
import 'package:hlshop/app/features/user/data/mulstore/model/update_contact_name_model.dart';
import 'package:hlshop/app/features/user/data/mulstore/model/update_receiver_address_model.dart';
import 'package:hlshop/app/features/user/data/mulstore/model/user_city_model_ms.dart';
import 'package:hlshop/app/features/user/data/mulstore/model/user_model_ms.dart';

import '../model/user_receiver_address_model_ms.dart';

part 'user_api_ms.g.dart';

@RestApi()
abstract class UserApiMS {
  factory UserApiMS(Dio dio) = _UserApiMS;

  @GET('/api/mulstore/users/get-profile')
  Future<UserMS?> getUserProfile();

  @GET('/api/mulstore/receiver-address/get-list')
  Future<ListReceiverAddressesMS?> getListAddress({
    @Query('offset') int? offset,
    @Query('limit') int? limit,
  });

  @GET('/api/mulstore/cities/get-list')
  Future<ListCityMS?> getListCity({
    @Query('offset') int? offset,
    @Query('limit') int? limit,
    @Query('search') String? search,
  });

  @GET('/api/mulstore/district/get-list-by-city-id')
  Future<ListDistrictMS?> getDistrict({
    @Query('cityID') String? city,
    @Query('search') String? search,
  });

  @POST('/api/mulstore/receiver-address/add')
  Future<ResponseAddReceiverAddressMS?> addReceiverAddres(
    @Body() AddReceiverAddressMS addReceiverAddressMS,
  );

  @POST('/api/mulstore/receiver-address/update')
  Future<ResponseAddReceiverAddressMS?> updateAddress(
    @Body() UpdateReceiverAddressMS updateReceiverAddressMS,
  );

  @POST('/api/mulstore/receiver-address/delete')
  Future<ResponseAddReceiverAddressMS?> deleteAddress(
    @Body() DeleteReceiverAddressMS deleteReceiverAddressMS,
  );

  @POST('/api/mulstore/receiver-address/add-default')
  Future<ResponseAddReceiverAddressMS?> addDefault(
    @Body() MSAddDefaultAddress defaultAddress,
  );

  @POST('/api/mulstore/users/profile/update-contact-name')
  Future<dynamic> updateContactName(
    @Body() UpdateContactNameMS contactFullName,
  );

  @POST('/api/mulstore/users/profile/update-cover')
  Future<dynamic> updateCoverImage({
    @Part() File? file_cover,
  });

  @POST('/api/mulstore/users/profile/update-avatar')
  Future<dynamic> updateAvatarImage({
    @Part() File? file_avatar,
  });

  @POST('/api/mulstore/users/profile/phone-add')
  Future<MsAddPhoneResultWrapper?> addPhone(
    @Body() MsAddPhoneReq body,
  );

  @POST('/api/mulstore/users/profile/phone-verify')
  Future<dynamic> verifyPhone(
    @Body() MsVerifyPhoneReq body,
  );

  @POST('/api/mulstore/users/profile/phone-resend-otp')
  Future<MsAddPhoneResultWrapper?> resendPhoneOtp(
    @Body() MsResendPhoneReq body,
  );
}
