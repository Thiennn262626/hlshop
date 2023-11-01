import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/user_email_info/user_email_info_body.dart';

@RoutePage()
class UserEmailInfoPage extends StatelessWidget {
  const UserEmailInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Email'.tr(),
      ),
      body: const UserEmailInfoBody(),
    );
  }
}
