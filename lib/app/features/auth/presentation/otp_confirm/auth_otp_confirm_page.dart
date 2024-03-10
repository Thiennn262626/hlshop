import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class AuthOtpConfirmPage extends StatelessWidget {
  const AuthOtpConfirmPage({
    required this.confirmOTPFunc,
    required this.onResendOTP,
    this.otpLength = 4,
    this.otpMessage,
    super.key,
    this.successMessage,
  });

  final Future<bool> Function(String otpUserInput) confirmOTPFunc;
  final Future<Object?> Function() onResendOTP;
  final int otpLength;
  final String? otpMessage;
  final String? successMessage;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthOtpConfirmCubit(
        confirmOTPFunc: confirmOTPFunc,
        onResendOTP: onResendOTP,
        otpLength: otpLength,
        otpMessage: otpMessage,
      ),
      child: Builder(builder: (context) {
        return DefaultStatusConsumer<AuthOtpConfirmCubit, AuthOtpConfirmState>(
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
            body: AuthOtpConfirmBody(),
          ),
        );
      }),
    );
  }
}
