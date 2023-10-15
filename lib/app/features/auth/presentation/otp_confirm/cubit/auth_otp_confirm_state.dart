part of 'auth_otp_confirm_cubit.dart';

class AuthOtpConfirmState extends RequestState {
  const AuthOtpConfirmState({
    super.status = ItemStatus.initial,
    this.otp,
    super.error,
  });

  final String? otp;

  @override
  List<Object?> get props => [status, otp, error];

  AuthOtpConfirmState copyWith({
    ItemStatus? status,
    String? otp,
    bool? isOtpValid,
    Object? error,
  }) {
    return AuthOtpConfirmState(
      status: status ?? this.status,
      otp: otp ?? this.otp,
      error: error ?? this.error,
    );
  }
}
