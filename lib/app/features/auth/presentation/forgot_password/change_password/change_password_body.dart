import 'package:hlshop/all_file/all_file.dart';

class ChangePasswordBody extends StatelessWidget {
  const ChangePasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: context.read<ChangePasswordCubit>().form,
      child: AppBottomAlign(
        bottomBar: AppBottomBar(
          elevation: 0,
          expandWidth: true,
          child: AppButton(
            style: AppButtonTheme.primary(context),
            isSubmitButton: true,
            label: LocaleKeys.common_Confirm.tr(),
            onPressed: () {
              context.read<ChangePasswordCubit>().submit();
            },
          ),
        ),
        child: AppScrollBody(
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Gaps.vGap24,
              AuthPasswordInputWithConfirm(
                passwordKey: ChangePasswordCubit.passwordKey,
                confirmKey: ChangePasswordCubit.confirmKey,
              ),
              Gaps.vGap24,
            ],
          ).pxDefault(),
        ),
      ),
    );
  }
}
