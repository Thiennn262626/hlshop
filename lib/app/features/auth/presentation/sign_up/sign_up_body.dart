import 'package:hlshop/all_file/all_file.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthPageBody(
      child: ReactiveForm(
        formGroup: context.read<SignUpCubit>().form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LocaleKeys.authen_SignUp
                .tr()
                .text
                .titleLarge(context)
                .semiBold
                .center
                .make(),
            Gaps.vGap20,
            const AuthIdPasswordInput(
              showConfirmPassword: true,
            ),
            Gaps.vGap20,
            AppButton(
              style: AppButtonTheme.primary(context),
              isSubmitButton: true,
              label: LocaleKeys.common_Next.tr(),
              onPressed: () {
                context.read<SignUpCubit>().signUpOTP();
              },
            ),
            Gaps.vGap20,
            Text.rich(
              TextSpan(
                text: LocaleKeys.authen_AlreadyHaveAccount.tr(),
                children: [
                  TextSpan(
                    text: ' ${LocaleKeys.authen_Login.tr()}',
                    style: TextStyle(
                      color: context.theme.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.router.replace(const LoginRoute());
                      },
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            Gaps.vGap20,
            LocaleKeys.authen_OrSignUpWith.tr().text.center.make(),
            Gaps.vGap20,
            const SocialAuthSection(),
            Gaps.vGap16,
          ],
        ),
      ),
    );
  }
}
