import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/user_phone_info/user_phone_info_body.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/widget/user_edit_bottom_bar.dart';

@RoutePage()
class UserPhoneInfoPage extends StatelessWidget {
  const UserPhoneInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Số điện thoại'.tr(),
      ),
      body: const UserPhoneInfoBody(),
      bottomNavigationBar: const AppBottomBar(
        child: UserEditBottomBar(),
      ),
    );
  }
}
