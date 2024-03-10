import 'package:hlshop/all_file/all_file.dart';


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
        return state.status.maybeWhen(
          authenticated: () => child ?? builder?.call(state) ?? const SizedBox.shrink(),
          orElse: () => unAuthenticatedWidget ?? const UnAuthenticatedContent(),
        );
      },
    );
  }
}
