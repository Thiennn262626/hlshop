import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/account/cubit/user_account_cubit.dart';
import 'package:hlshop/app/features/user/presentation/account/user_account_body.dart';

@RoutePage()
class UserAccountPage extends StatelessWidget {
  const UserAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserAccountCubit(),
      child: ApiItemConsumer<UserAccountCubit, UserAccountState>(
        getStatus: (state) => state.status,
        child: Scaffold(
          appBar: AppAppBar(
            title: 'Tài khoản'.tr(),
          ),
          body: const UserAccountBody(),
        ),
      ),
    );
  }
}
