import 'package:hlshop/all_file/all_file.dart';


@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(
            idInputControl: AuthIdPasswordInput.createControlGroup(),
            authBloc: context.read<AuthBloc>(),
          ),
        ),
        BlocProvider(
          create: (context) => SignUpCubit(
            authBloc: context.read<AuthBloc>(),
          ),
        ),
      ],
      child: DefaultStatusConsumer<SignUpCubit, SignUpState>(
        child: DefaultStatusConsumer<LoginCubit, LoginState>(
          onSuccess: (state) {
            context.router.popToParentOf([LoginRoute.name]);
          },
          onError: (error) {
            if (error is AuthAccountExistException) {
              DialogUtils.showErrorDialog(
                context: context,
                content: context.getAppErrorMsg(error.error),
                error: error,
                onConfirm: () {
                  context.read<SignUpCubit>().reActiveAccount(
                        userID: error.userID,
                        id: error.userName,
                      );
                },
              );
              return true;
            }
            return false;
          },
          child: const Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppAppBar(
              title: '',
              args: AppBarArgs(
                elevation: 0,
              ),
            ),
            body: LoginBody(),
          ),
        ),
      ),
    );
  }
}
