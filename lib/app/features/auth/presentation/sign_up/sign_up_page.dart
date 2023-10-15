import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/presentation/sign_up/cubit/sign_up_cubit.dart';
import 'package:hlshop/app/features/auth/presentation/sign_up/sign_up_body.dart';
import 'package:hlshop/app/features/auth/self.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        authBloc: context.read<AuthBloc>(),
      ),
      child: Builder(
        builder: (context) {
          return DefaultStatusConsumer<SignUpCubit, SignUpState>(
            onSuccess: (state) {
              getIt<AppAutoRoute>().popToParentOf(
                [
                  SignUpRoute.name,
                  LoginRoute.name,
                ],
              );
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
            child: Scaffold(
              appBar: AppAppBar(
                title: '',
                args: AppBarArgs(
                  elevation: 0,
                ),
              ),
              body: SignUpBody(),
            ),
          );
        },
      ),
    );
  }
}
