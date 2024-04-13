import 'package:hlshop/all_file/all_file.dart';

import '../cubit/detail_account_cubit.dart';
import 'user_account_info_body.dart';

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
      child: Builder(
        builder: (context) {
          return ApiItemConsumer<UserBloc, UserState>(
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
              bottomNavigationBar: AppBottomBar(
                child: UserEditBottomBar(
                  onConfirm: () {
                    context.read<UserBloc>().add(
                          UserEvent.updateUserName(
                            userName:
                                context.read<DetailAccountCubit>().state.name ??
                                    '',
                          ),
                        );
                  },
                ),
              ),
              appBar: AppAppBar(
                title: 'Tên người dùng'.tr(),
              ),
              body: const UserAccountInfoBody(),
            ),
          );
        },
      ),
    );
  }
}
