import 'package:hlshop/all_file/all_file.dart';

part 'otp_confirm_state.dart';

class OtpConfirmCubit extends RequestCubit<OtpConfirmState> {
  OtpConfirmCubit({
    required Object? requestOtpResult,
    required this.confirmOTPFunc,
    required this.onResendOTP,
    required this.otpLength,
    this.otpMessage,
  }) : super(OtpConfirmState(
          requestOtpResult: requestOtpResult,
        ));

  final Future<bool> Function(String otpUserInput, Object? requestOtpResult)
      confirmOTPFunc;
  final Future<Object?> Function(Object? requestOtpResult) onResendOTP;
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
      await confirmOTPFunc(state.otp ?? '', state.requestOtpResult);
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
      final requestOtpResult = await onResendOTP(
        state.requestOtpResult,
      );
      emit(
        state.copyWith(
          requestOtpResult: requestOtpResult,
        ),
      );
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
