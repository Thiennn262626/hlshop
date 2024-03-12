import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/detail_account_body.dart';

@RoutePage()
class ReceiveDetailAccountPage extends StatelessWidget {
  const ReceiveDetailAccountPage({
    super.key,
    required this.user,
  });

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Tài khoản'.tr(),
      ),
      body: const UserProfilePullRefresh(child: ReceiveDetailAccountBody()),
    );
  }
}
