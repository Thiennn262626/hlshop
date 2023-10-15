import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/core/utils/check_id_helper.dart';
import 'package:hlshop/app/features/auth/self.dart';

part 'auth_repo.freezed.dart';

@freezed
class AuthenticationStatus with _$AuthenticationStatus {
  const factory AuthenticationStatus.notDetermined() = _NotDetermined;

  const factory AuthenticationStatus.authenticated() = _Authenticated;

  const factory AuthenticationStatus.notAuthenticated() = _NotAuthenticated;
}

abstract class AuthRepo {
  Future<AuthSignUpOTPEntity> signUpPhone({
    required String phone,
    required String countryCode,
    required String password,
  });

  Future<AuthSignUpOTPEntity> resendSignUpOTPPhone({
    required String userID,
    CheckIdResultData? idData,
  });

  Future<AuthSignUpOTPEntity> signUpEmail({
    required String email,
    required String password,
  });

  Future<AuthSignUpOTPEntity> resendSignUpOTPEmail({
    required String userID,
    CheckIdResultData? idData,
  });

  Future<AuthConfirmEntity> confirmSignUpOTP({
    required String otp,
    required String uuid,
    required String userID,
    AuthSignUpOTPEntity? requestData,
  });

  Future<AuthConfirmEntity> loginWithPhonePassword({
    required String phone,
    required String countryCode,
    required String password,
  });

  Future<AuthConfirmEntity> loginWithEmailPassword({
    required String email,
    required String password,
  });

  Future<ForgotPasswordOTPEntity> forgotPasswordSentOTPPhone({
    required String phone,
    required String countryCode,
  });

  Future<ForgotPasswordOTPEntity> forgotPasswordSentOTPEmail({
    required String email,
  });

  Future<ForgotPasswordConfirmOTPEntity> forgotPasswordConfirmOTP({
    required String otp,
    required String userID,
    required String uuid,
  });

  Future<ForgotPasswordCreatePasswordEntity> forgotPasswordCreatePassword({
    required String userID,
    required String uuid,
    required String password,
  });

  Future<dynamic> loginWithGoogle();

  Future<dynamic> loginWithFacebook();

  Future<dynamic> loginWithApple();

  Future<void> logout();
}
