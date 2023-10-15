import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/data/mulstore/model/auth_model_ms.dart';

part 'auth_api_ms.g.dart';

@RestApi()
abstract class AuthApiMS {
  factory AuthApiMS(Dio dio) = _AuthApiMS;

  @POST('/api/mulstore/auth/signup-phone')
  Future<AuthSignUpOTPResp?> signUpPhone(@Body() AuthSignUpOTPReq req);

  @POST('/api/mulstore/auth/signup-phone')
  Future<AuthSignUpOTPResp?> signUpEmail(@Body() AuthSignUpOTPReq req);

  @POST('/api/mulstore/auth/resend-otp-phone')
  Future<AuthSignUpOTPResp?> resendSignUpPhoneOTP(@Body() AuthResendOTPReq req);

  @POST('/api/mulstore/auth/resend-otp-email')
  Future<AuthSignUpOTPResp?> resendSignUpEmailOTP(@Body() AuthResendOTPReq req);

  @POST('/api/mulstore/auth/verify-otp')
  Future<VerifyOTPResp?> verifyOTP(@Body() AuthVerifyOTPReq req);

  @POST('/api/mulstore/auth/signin-phone')
  Future<AuthLoginPasswordResp?> loginPhone(
    @Body() AuthLoginPasswordReq req,
  );

  @POST('/api/mulstore/auth/signin-email')
  Future<AuthLoginPasswordResp?> loginEmail(
    @Body() AuthLoginPasswordReq req,
  );

  @POST('/api/mulstore/auth/forgot-password/send-otp-phone')
  Future<ForgotPasswordResp?> forgotPasswordSendOTPPhone(
    @Body() ForgotPasswordReq req,
  );

  @POST('/api/mulstore/auth/forgot-password/send-otp-email')
  Future<ForgotPasswordResp?> forgotPasswordSendOTPEmail(
    @Body() ForgotPasswordReq req,
  );

  @POST('/api/mulstore/auth/forgot-password/verify-otp')
  Future<ForgotPasswordVerifyOTPResp?> forgotPasswordVerifyOTP(
    @Body() ForgotPasswordVerifyOTPReq req,
  );

  @POST('/api/mulstore/auth/forgot-password/create-password')
  Future<ForgotPasswordCreatePasswordResp?> forgotPasswordCreatePassword(
    @Body() ForgotPasswordCreatePasswordReq req,
  );
}
