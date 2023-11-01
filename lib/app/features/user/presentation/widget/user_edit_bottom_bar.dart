import 'package:hlshop/all_file/all_file.dart';

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
          style: AppButtonTheme.grey(context).big(context),
          label: 'Hủy'.tr(),
          onPressed: onCancel ??
              () {
                context.router.pop();
              },
        ).expand(),
        AppButton(
          style: AppButtonTheme.primary(context).big(context),
          onPressed: onConfirm,
          child: 'Lưu thay đổi'.tr().textAuto.center.maxLines(1).make(),
        ).expand(),
      ].withDivider(Gaps.hGap10),
    );
  }
}
