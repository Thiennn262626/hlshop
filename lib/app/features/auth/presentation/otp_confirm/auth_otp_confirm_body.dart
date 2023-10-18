import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/presentation/otp_confirm/cubit/auth_otp_confirm_cubit.dart';
import 'package:hlshop/app/features/auth/presentation/widget/auth_page_body.dart';
import 'package:hlshop/app/features/auth/presentation/widget/otp_input.dart';
import 'package:hlshop/app/features/auth/presentation/widget/resend_count_down_text.dart';

class AuthOtpConfirmBody extends StatelessWidget {
  const AuthOtpConfirmBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthOtpConfirmCubit>();
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
          BlocBuilder<AuthOtpConfirmCubit, AuthOtpConfirmState>(
            builder: (context, state) {
              return AppButton(
                isEnable: (state.otp?.length ?? 0) == otpLength,
                style: AppButtonTheme.primary(context).big(context),
                label: LocaleKeys.common_Confirm.tr(),
                onPressed: () {
                  cubit.onConfirmOTP();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
