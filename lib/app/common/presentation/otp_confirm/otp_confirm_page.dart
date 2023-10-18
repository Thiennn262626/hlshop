import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/presentation/otp_confirm/cubit/otp_confirm_cubit.dart';
import 'package:hlshop/app/common/presentation/otp_confirm/otp_confirm_body.dart';

@RoutePage()
class OtpConfirmPage extends StatelessWidget {
  const OtpConfirmPage({
    required this.requestOtpResult,
    required this.confirmOTPFunc,
    required this.onResendOTP,
    this.otpLength = 4,
    this.otpMessage,
    super.key,
    this.successMessage,
  });

  final Object? requestOtpResult;
  final Future<bool> Function(String otpUserInput, Object? requestOtpResult)
      confirmOTPFunc;
  final Future<Object?> Function(Object? requestOtpResult) onResendOTP;
  final int otpLength;
  final String? otpMessage;
  final String? successMessage;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpConfirmCubit(
        requestOtpResult: requestOtpResult,
        confirmOTPFunc: confirmOTPFunc,
        onResendOTP: onResendOTP,
        otpLength: otpLength,
        otpMessage: otpMessage,
      ),
      child: Builder(builder: (context) {
        return DefaultStatusConsumer<OtpConfirmCubit, OtpConfirmState>(
          onSuccess: (state) {
            final router = context.router;
            if (successMessage?.isNotEmpty ?? false) {
              DialogUtils.showSuccessDialog(
                context: context,
                content: successMessage,
                barrierDismissible: false,
                onAutoDismiss: () {
                  router.pop(true);
                },
              );
            } else {
              router.pop(true);
            }
          },
          child: Scaffold(
            appBar: AppAppBar(
              title: '',
              args: AppBarArgs(
                elevation: 0,
              ),
            ),
            body: OtpConfirmBody(),
          ),
        );
      }),
    );
  }
}
