import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/domain/entity/user_base_entity.dart';
import 'package:hlshop/app/features/user/presentation/bloc/user_bloc.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/cubit/detail_account_cubit.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/user_account%20_info/user_account_info_body.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/widget/user_edit_bottom_bar.dart';

@RoutePage()
class UserAccountInfoPage extends StatelessWidget {
  const UserAccountInfoPage({super.key, required this.user});

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailAccountCubit(
        item: context.read<UserBloc>().state.userEntity,
      ),
      child: ApiItemConsumer<UserBloc, UserState>(
        getStatus: (state) => state.updateStatus,
        onDone: (value) async {
          await DialogUtils.showSuccessDialog(
            context: context,
            content: 'Cập nhật thành công'.tr(),
            onAutoDismiss: () {
              context.router.pop(true);
            },
            barrierDismissible: false,
          );
        },
        child: Scaffold(
          bottomNavigationBar: const AppBottomBar(
            child: UserEditBottomBar(),
          ),
          appBar: AppAppBar(
            title: 'Tên người dùng'.tr(),
          ),
          body: const UserAccountInfoBody(),
        ),
      ),
    );
  }
}
