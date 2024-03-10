import 'package:hlshop/all_file/all_file.dart';

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
  final VoidCallback? onAuthenticated;
  final VoidCallback? onUnAuthenticated;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.status.maybeWhen(
          authenticated: onAuthenticated,
          notAuthenticated: onUnAuthenticated,
          orElse: () => null,
        );
        onAuthenticatedStatusChange?.call(state);
      },
      builder: (context, state) {
        return state.status.maybeWhen(
          authenticated: () => child,
          orElse: () => unAuthenticatedWidget ?? const UnAuthenticatedContent(),
        );
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
        Assets.icons.common.icAuthenRequired.svg(),
        'Vui lòng đăng nhập/đăng ký để sử dụng tính năng này'
            .tr()
            .text
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
