import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/info/cubit/user_info_cubit.dart';
import 'package:hlshop/app/features/user/presentation/info/user_info_body.dart';
import 'package:hlshop/app/features/user/self.dart';

@RoutePage()
class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key, required this.user});

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserInfoCubit(),
      child: Scaffold(
        appBar: AppAppBar(
          title: 'Tài khoản'.tr(),
        ),
        body: const UserInfoBody(),
      ),
    );
  }
}
