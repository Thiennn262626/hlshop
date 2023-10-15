import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/bloc/user_bloc.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/cubit/detail_account_cubit.dart';

class UserEditBottomBar extends StatelessWidget {
  const UserEditBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppButton(
          style: AppButtonTheme.grey(context),
          label: 'Hủy'.tr(),
          onPressed: () {
            context.router.pop();
          },
        ).expand(),
        AppButton(
          style: AppButtonTheme.confirmAction(context),
          child: 'Lưu thay đổi'.tr().textAuto.maxLines(1).make(),
          onPressed: () {
            context.read<UserBloc>().add(
                  UserEvent.updateUserName(
                    userName:
                        context.read<DetailAccountCubit>().state.name ?? '',
                  ),
                );
          },
        ).expand(),
      ].withDivider(Gaps.hGap10),
    );
  }
}
