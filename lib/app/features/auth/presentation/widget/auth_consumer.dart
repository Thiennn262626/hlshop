import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:hlshop/app/features/user/self.dart';

class AuthConsumer extends StatelessWidget {
  const AuthConsumer({
    required this.child,
    this.unAuthenticatedWidget,
    this.onAuthenticated,
    this.onUnAuthenticated,
    this.onAuthenticatedStatusChange,
    super.key,
  });

  final Widget child;
  final Widget? unAuthenticatedWidget;

  final ValueChanged<AuthState>? onAuthenticatedStatusChange;
  final ValueChanged<UserEntity?>? onAuthenticated;
  final VoidCallback? onUnAuthenticated;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        onAuthenticatedStatusChange?.call(state);

        if (state is AuthenticatedState) {
          onAuthenticated?.call(state.data.user);
        }
        if (state is UnAuthenticatedState) {
          onUnAuthenticated?.call();
        }
      },
      builder: (context, state) {
        if (state is UnAuthenticatedState) {
          return unAuthenticatedWidget ?? const UnAuthenticatedContent();
        }
        return child;
      },
    );
  }
}

class UnAuthenticatedContent extends StatelessWidget {
  const UnAuthenticatedContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap50,
        'Đăng nhập để sử dụng tính năng!'
            .tr()
            .text
            .headline4(context)
            .semiBold
            .black
            .center
            .make(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppButton(
              label: 'Đăng nhập'.tr(),
              style: AppButtonTheme.primary(context),
              onPressed: () {
                context.pushRoute(const LoginRoute());
              },
            ),
            AppButton(
              style: AppButtonTheme.ghost(context),
              label: 'Đăng ký'.tr(),
              onPressed: () {
                context.pushRoute(const SignUpRoute());
              },
            ),
          ].withDivider(Gaps.vGap8),
        ),
      ].withDivider(Gaps.vGap36),
    ).objectCenter().p64();
  }
}
