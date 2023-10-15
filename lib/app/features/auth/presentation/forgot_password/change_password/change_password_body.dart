import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/presentation/forgot_password/change_password/cubit/change_password_cubit.dart';
import 'package:hlshop/app/features/auth/presentation/widget/auth_id_input.dart';

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
            style: AppButtonTheme.confirmAction(context),
            isSubmitButton: true,
            label: LocaleKeys.common_Confirm.tr(),
            onPressed: () {
              context.read<ChangePasswordCubit>().submit();
            },
          ),
        ),
        child: AppScrollBody(
          child: Column(
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
