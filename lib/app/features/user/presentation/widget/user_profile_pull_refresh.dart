import 'package:app_ui_kit/components/refresh/app_pull_down_refresh.dart';
import 'package:hlshop/all_file/all_file.dart';

class UserProfilePullRefresh extends StatelessWidget {
  const UserProfilePullRefresh({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppPullDownRefresh(
      refresh: () {
        context.read<UserBloc>().add(const UserEvent.fetch());
      },
      child: child,
    );
  }
}
