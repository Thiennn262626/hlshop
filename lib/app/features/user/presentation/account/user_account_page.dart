import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/notification/presentation/widgets/btn_notification.dart';
import 'package:hlshop/app/features/user/presentation/account/user_account_body.dart';

@RoutePage()
class UserAccountPage extends StatelessWidget {
  const UserAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Tài khoản'.tr(),
        args: AppBarArgs(
          actions: [
            const NotificationBtn(),
            Gaps.hGap4,
          ].withDivider(Gaps.hGap4, showLast: true),
        ),
      ),
      body: const UserAccountBody(),
    );
  }
}
