import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/bloc/user_bloc.dart';

class NotificationBtn extends StatelessWidget {
  const NotificationBtn({super.key, this.padding, this.badgeBorderColor});

  final EdgeInsets? padding;
  final Color? badgeBorderColor;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listenWhen: (previous, current) =>
          previous.userEntity?.id != current.userEntity?.id,
      listener: (context, state) {},
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
            context.read<UserBloc>().checkLoginAction(
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
