import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/presentation/forgot_password/change_password/change_password_body.dart';
import 'package:hlshop/app/features/auth/presentation/forgot_password/change_password/cubit/change_password_cubit.dart';

@RoutePage()
class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({
    super.key,
    required this.userID,
    required this.uuid,
  });

  final String userID;
  final String uuid;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangePasswordCubit(
        userID: userID,
        uuid: uuid,
      ),
      child: Builder(
        builder: (context) {
          return DefaultStatusConsumer<ChangePasswordCubit, ChangePasswordState>(
            onSuccess: (state) {
              DialogUtils.showSuccessDialog(
                context: context,
                content: 'Đổi mật khẩu thành công',
                onAutoDismiss: () {
                  context.router.popToParentOf([ForgotPasswordRoute.name]);
                },
              );
            },
            child: Scaffold(
              appBar: AppAppBar(
                title: LocaleKeys.authen_ChangePasword.tr(),
                args: AppBarArgs(
                  centerTitle: true,
                ),
              ),
              body: ChangePasswordBody(),
            ),
          );
        },
      ),
    );
  }
}
