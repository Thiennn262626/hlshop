part of 'otp_confirm_cubit.dart';

class OtpConfirmState extends RequestState {
  const OtpConfirmState({
    super.status = ItemStatus.initial,
    this.otp,
    super.error,
    this.requestOtpResult,
  });

  final String? otp;
  final Object? requestOtpResult;

  @override
  List<Object?> get props => [status, otp, error, requestOtpResult];

  OtpConfirmState copyWith({
    ItemStatus? status,
    String? otp,
    bool? isOtpValid,
    Object? error,
    Object? requestOtpResult,
  }) {
    return OtpConfirmState(
      status: status ?? this.status,
      otp: otp ?? this.otp,
      error: error ?? this.error,
      requestOtpResult: requestOtpResult ?? this.requestOtpResult,
    );
  }
}
