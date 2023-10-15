import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/presentation/bloc/auth_bloc.dart';

class UserAuthListener extends StatelessWidget {
  const UserAuthListener({
    required this.child,
    this.onUserLogin,
    this.onUserLogout,
    super.key,
  });

  final Widget child;
  final VoidCallback? onUserLogin;
  final VoidCallback? onUserLogout;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is UnAuthenticatedState) {
          onUserLogout?.call();
        }
        if (state is AuthenticatedState) {
          onUserLogin?.call();
        }
      },
      builder: (context, state) {
        return child;
      },
    );
  }
}
