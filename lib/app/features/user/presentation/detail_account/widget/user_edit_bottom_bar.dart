import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/bloc/user_bloc.dart';
import 'package:hlshop/app/features/user/presentation/detail_account/cubit/detail_account_cubit.dart';

class UserEditBottomBar extends StatelessWidget {
  const UserEditBottomBar({
    super.key,
    this.onCancel,
    this.onConfirm,
  });

  final VoidCallback? onCancel;
  final VoidCallback? onConfirm;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppButton(
          style: AppButtonTheme.grey(context),
          label: 'Hủy'.tr(),
          onPressed: onCancel ??
              () {
                context.router.pop();
              },
        ).expand(),
        AppButton(
          style: AppButtonTheme.primary(context),
          onPressed: onConfirm,
          child: 'Lưu thay đổi'.tr().text.center.make(),
        ).expand(),
      ].withDivider(Gaps.hGap10),
    );
  }
}
