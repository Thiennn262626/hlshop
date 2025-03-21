import 'package:hlshop/all_file/all_file.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthPageBody(
      child: ReactiveForm(
        formGroup: context.read<LoginCubit>().form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LocaleKeys.authen_Login
                .tr()
                .text
                .titleLarge(context)
                .semiBold
                .center
                .make(),
            Gaps.vGap24,
            const AuthIdPasswordInput(
              showPasswordHelper: false,
            ),
            AppButtonText(
              padding: EdgeInsets.zero.copyWith(top: 8),
              label: '${LocaleKeys.authen_ForgotPassword.tr()}?',
              onPressed: () {
                context.pushRoute(const ForgotPasswordRoute());
              },
            ).objectCenterRight(),
            Gaps.vGap20,
            AppButton(
              style: AppButtonTheme.primary(context),
              isSubmitButton: true,
              label: LocaleKeys.authen_Login.tr(),
              onPressed: () {
                context.read<LoginCubit>().loginPassword();
              },
            ),
            Gaps.vGap20,
            const LoginNotHaveAccountMsg(),
            Gaps.vGap24,
            LocaleKeys.authen_OrLoginWith.tr().text.center.make(),
            Gaps.vGap24,
            const SocialAuthSection(),
            Gaps.vGap16,
          ],
        ),
      ),
    );
  }
}

class LoginNotHaveAccountMsg extends StatelessWidget {
  const LoginNotHaveAccountMsg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.authen_NotHaveAccount.tr(),
        children: [
          TextSpan(
            text: ' ${LocaleKeys.authen_SignUp.tr()}',
            style: TextStyle(
              color: context.theme.primaryColor,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.router.replace(const SignUpRoute());
              },
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
