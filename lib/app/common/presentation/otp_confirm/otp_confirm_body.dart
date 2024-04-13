import 'package:hlshop/all_file/all_file.dart';

class OtpConfirmBody extends StatelessWidget {
  const OtpConfirmBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OtpConfirmCubit>();
    final otpLength = cubit.otpLength;
    return AuthPageBody(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          cubit.otpMessage?.text.center.titleMedium(context).make() ??
              const SizedBox.shrink(),
          Gaps.vGap24,
          DefaultPinInput(
            length: otpLength,
            onCompleted: (value) {
              cubit
                ..setOtpValid(otp: value)
                ..onConfirmOTP();
            },
            onEditing: (value) {
              log('onEditing:');
              cubit.setOtpValid(otp: value);
            },
          ),
          Gaps.vGap24,
          ResendCountdownText(
            onResend: cubit.resendOtp,
          ).objectCenter(),
          Gaps.vGap32,
          BlocBuilder<OtpConfirmCubit, OtpConfirmState>(
            builder: (context, state) {
              return AppButton(
                isEnable: (state.otp?.length ?? 0) == otpLength,
                style: AppButtonTheme.primary(context),
                label: LocaleKeys.common_Confirm.tr(),
                onPressed: cubit.onConfirmOTP,
              );
            },
          ),
        ],
      ),
    );
  }
}
