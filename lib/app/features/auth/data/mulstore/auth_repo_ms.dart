import 'package:app_utils/view/app_info_utils.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/presentation/widgets/exception/app_exception_handler.dart';
import 'package:hlshop/app/features/auth/core/utils/check_id_helper.dart';
import 'package:hlshop/app/features/auth/data/mulstore/api/auth_api_ms.dart';
import 'package:hlshop/app/features/auth/data/mulstore/model/auth_model_ms.dart';
import 'package:hlshop/app/features/auth/self.dart';
import 'package:hlshop/services/firebase_notification_service.dart';

const _deviceType = 'MOBILEAPP';

class AuthRepoMS extends AuthRepo {
  final _authApi = getIt<AuthApiMS>();

  Object _checkReActiveError(Object e) {
    if (AppExceptionHandler.getServerErrorCode(e) == 'MSG0046') {
      return AuthAccountExistException(
        error: e,
        userID: AppExceptionHandler.getServerErrorVar(e, 'userID') ?? '',
        userName: AppExceptionHandler.getServerErrorVar(e, 'userLogin') ?? '',
      );
    }
    return e;
  }

  @override
  Future<AuthSignUpOTPEntity> signUpPhone({
    required String phone,
    required String countryCode,
    required String password,
  }) async {
    try {
      final rs = await _authApi.signUpPhone(
        AuthSignUpOTPReq(
          userLogin: phone,
          countryCode: countryCode,
          password: password,
        ),
      );
      if (rs != null) {
        return Future.value(
          rs.toEntity(),
        );
      }
      return Future.error('Can not sign up');
    } catch (e) {
      return Future.error(_checkReActiveError(e));
    }
  }

  @override
  Future<AuthSignUpOTPEntity> signUpEmail({
    required String email,
    required String password,
  }) async {
    try {
      final rs = await _authApi.signUpEmail(
        AuthSignUpOTPReq(
          userLogin: email,
          password: password,
        ),
      );
      if (rs != null) {
        return Future.value(
          rs.toEntity(),
        );
      }
      return Future.error('Can not sign up');
    } catch (e) {
      return Future.error(_checkReActiveError(e));
    }
  }

  @override
  Future<AuthSignUpOTPEntity> resendSignUpOTPPhone({
    required String userID,
    CheckIdResultData? idData,
  }) async {
    final rs = await _authApi.resendSignUpPhoneOTP(
      AuthResendOTPReq(
        userID: userID,
        phone: idData?.phone,
        countryCode: idData?.countryCode,
      ),
    );
    if (rs != null) {
      return Future.value(
        rs.toEntity(),
      );
    }
    return Future.error('Can not resend OTP');
  }

  @override
  Future<AuthSignUpOTPEntity> resendSignUpOTPEmail({
    required String userID,
    CheckIdResultData? idData,
  }) async {
    final rs = await _authApi.resendSignUpEmailOTP(
      AuthResendOTPReq(
        userID: userID,
      ),
    );
    if (rs != null) {
      return Future.value(
        rs.toEntity(),
      );
    }
    return Future.error('Can not resend OTP');
  }

  @override
  Future<AuthConfirmEntity> confirmSignUpOTP({
    required String otp,
    required String uuid,
    required String userID,
    AuthSignUpOTPEntity? requestData,
  }) async {
    final object = requestData?.object;
    if (object is AuthSignUpOTPResp) {
      final deviceID = await AppInfoUtils.getDeviceID();
      final fcmToken = await FirebaseNotificationService.instance.getFCMToken();
      final rs = await _authApi.verifyOTP(
        AuthVerifyOTPReq(
          userID: userID,
          uuid: uuid,
          otp: otp,
          deviceID: deviceID,
          deviceToken: fcmToken,
          type: _deviceType,
        ),
      );
      if (rs != null) {
        return Future.value(
          rs.toEntity(),
        );
      }
    }
    log('confirmSignUpOTP: requestData is not AuthSignUpOTPResp');
    return Future.error('OTP is not correct');
  }

  @override
  Future<AuthConfirmEntity> loginWithPhonePassword({
    required String phone,
    required String countryCode,
    required String password,
  }) async {
    try {
      final deviceID = await AppInfoUtils.getDeviceID();
      final fcmToken = await FirebaseNotificationService.instance.getFCMToken();

      final rs = await _authApi.loginPhone(
        AuthLoginPasswordReq(
          userLogin: phone,
          countryCode: countryCode,
          password: password,
          deviceID: deviceID,
          deviceToken: fcmToken,
          type: _deviceType,
        ),
      );
      if (rs != null) {
        return Future.value(
          rs.toEntity(),
        );
      }
      return Future.error('Can not login');
    } catch (e) {
      return Future.error(_checkReActiveError(e));
    }
  }

  @override
  Future<AuthConfirmEntity> loginWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final deviceID = await AppInfoUtils.getDeviceID();
      final fcmToken = await FirebaseNotificationService.instance.getFCMToken();

      final rs = await _authApi.loginEmail(
        AuthLoginPasswordReq(
          userLogin: email,
          password: password,
          deviceID: deviceID,
          deviceToken: fcmToken,
          type: _deviceType,
        ),
      );
      if (rs != null) {
        return Future.value(
          rs.toEntity(),
        );
      }
      return Future.error('Can not login');
    } catch (e) {
      return Future.error(_checkReActiveError(e));
    }
  }

  @override
  Future loginWithApple() {
    // TODO: implement loginWithApple
    throw UnimplementedError();
  }

  @override
  Future loginWithFacebook() {
    // TODO: implement loginWithFacebook
    throw UnimplementedError();
  }

  @override
  Future loginWithGoogle() {
    // TODO: implement loginWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<ForgotPasswordConfirmOTPEntity> forgotPasswordConfirmOTP({
    required String otp,
    required String userID,
    required String uuid,
  }) async {
    final rs = await _authApi.forgotPasswordVerifyOTP(
      ForgotPasswordVerifyOTPReq(
        otp: otp,
        userID: userID,
        uuid: uuid,
      ),
    );
    if (rs != null) {
      return Future.value(
        rs.toEntity(),
      );
    }
    return Future.error('Can not verify OTP');
  }

  @override
  Future<ForgotPasswordCreatePasswordEntity> forgotPasswordCreatePassword({
    required String userID,
    required String uuid,
    required String password,
  }) async {
    final rs = await _authApi.forgotPasswordCreatePassword(
      ForgotPasswordCreatePasswordReq(
        userID: userID,
        uuid: uuid,
        password: password,
      ),
    );
    if (rs != null) {
      return Future.value(
        rs.toEntity(),
      );
    }
    return Future.error('Can not create password');
  }

  @override
  Future<ForgotPasswordOTPEntity> forgotPasswordSentOTPPhone({
    required String phone,
    required String countryCode,
  }) async {
    final rs = await _authApi.forgotPasswordSendOTPPhone(
      ForgotPasswordReq(
        userLogin: phone,
        countryCode: countryCode,
      ),
    );
    if (rs != null) {
      return Future.value(
        rs.toEntity(),
      );
    }
    return Future.error('Can not send OTP');
  }

  @override
  Future<ForgotPasswordOTPEntity> forgotPasswordSentOTPEmail(
      {required String email}) async {
    final rs = await _authApi.forgotPasswordSendOTPEmail(
      ForgotPasswordReq(
        userLogin: email,
      ),
    );
    if (rs != null) {
      return Future.value(
        rs.toEntity(),
      );
    }
    return Future.error('Can not send OTP');
  }
}
