import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/presentation/bloc/auth_bloc.dart';

class NotificationBtn extends StatelessWidget {
  const NotificationBtn({super.key, this.padding, this.badgeBorderColor});

  final EdgeInsets? padding;
  final Color? badgeBorderColor;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.data.user?.id != current.data.user?.id,
      listener: (context, state) {
        if (state is AuthenticatedState) {}
      },
      builder: (context, state) {
        final notiCount = 0;
        return BadgedCount(
          icon: Icon(
            PhosphorIcons.bell,
            color: context.theme.iconTheme.color,
          ),
          badgeBorderColor: badgeBorderColor,
          padding: padding,
          count: notiCount,
          onPressed: () {
            context.read<AuthBloc>().checkLoginAction(
              context,
              onLogin: (user) {
                return context.pushRoute(const NotificationMainRoute());
              },
            );
          },
        );
      },
    );
  }
}
