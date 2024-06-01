import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key, required this.user});

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Tài khoản'.tr().text.titleLarge(context).make(),
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.status.maybeWhen(
            notAuthenticated: () {
              context.router.popForced();
            },
            orElse: () => null,
          );
        },
        builder: (BuildContext context, AuthState state) =>
            const UserProfilePullRefresh(
          child: UserInfoBody(),
        ),
      ),
    );
  }
}
