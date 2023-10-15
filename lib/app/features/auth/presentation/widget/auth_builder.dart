import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/presentation/bloc/auth_bloc.dart';

class AuthBuilder extends StatelessWidget {
  const AuthBuilder({
    this.child,
    this.builder,
    this.unAuthenticatedWidget,
    super.key,
  });

  final Widget? child;
  final Widget Function(AuthState state)? builder;
  final Widget? unAuthenticatedWidget;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is UnAuthenticatedState) {
          return unAuthenticatedWidget ?? const UnAuthenticatedContent();
        }
        return child ?? builder?.call(state) ?? const SizedBox.shrink();
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
        AppButton(
          label: 'Đăng nhập'.tr(),
          onPressed: () {},
        ),
        AppButton(
          style: AppButtonTheme.ghost(context),
          label: 'Đăng ký'.tr(),
          onPressed: () {},
        ),
      ],
    );
  }
}
