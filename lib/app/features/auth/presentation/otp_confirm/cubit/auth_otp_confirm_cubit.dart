import 'package:hlshop/all_file/all_file.dart';

part 'auth_otp_confirm_state.dart';

class AuthOtpConfirmCubit extends RequestCubit<AuthOtpConfirmState> {
  AuthOtpConfirmCubit({
    required this.confirmOTPFunc,
    required this.onResendOTP,
    required this.otpLength,
    this.otpMessage,
  }) : super(const AuthOtpConfirmState());

  final Future<bool> Function(String otpUserInput) confirmOTPFunc;
  final Future<Object?> Function() onResendOTP;
  final int otpLength;
  final String? otpMessage;

  void setOtpValid({required String otp}) {
    log('setOtpValid otp: $otp');
    emit(
      state.copyWith(
        otp: otp,
        status: ItemStatus.initial,
      ),
    );
  }

  Future<void> onConfirmOTP() async {
    if (state.otp == null || state.otp!.length != otpLength) {
      return;
    }
    try {
      emit(state.copyWith(status: ItemStatus.loading));
      await confirmOTPFunc(state.otp ?? '');
      emit(state.copyWith(status: ItemStatus.success));
    } catch (e) {
      log('$e', error: e);
      emit(
        state.copyWith(
          status: ItemStatus.error,
          error: e,
        ),
      );
    }
  }

  Future<void> resendOtp() async {
    try {
      await onResendOTP();
    } catch (e) {
      log('$e', error: e);
      emit(
        state.copyWith(
          status: ItemStatus.error,
          error: e,
        ),
      );
    }
  }
}
