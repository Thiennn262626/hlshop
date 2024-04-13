import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key, required this.user});

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Tài khoản'.tr(),
      ),
      body: AuthConsumer(
        onUnAuthenticated: () {
          context.popRoute();
        },
        child: const UserProfilePullRefresh(child: UserInfoBody()),
      ),
    );
  }
}
