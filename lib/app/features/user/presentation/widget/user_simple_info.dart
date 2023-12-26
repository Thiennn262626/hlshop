import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/domain/entity/user_base_entity.dart';

class UserSimpleInfo extends StatelessWidget {
  const UserSimpleInfo({
    super.key,
    required this.user,
    this.subTitle,
    this.onPressed,
  });

  final UserEntity? user;
  final String? subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: onPressed,
      child: Row(
        children: [
          AppAvatar(
            src: user?.avatar ?? '',
            border: Border.all(
              color: context.themeColor.greyLighter,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (user?.fullNameOrUserName ?? 'Đăng nhập/Đăng ký'.tr())
                  ?.text
                  .titleMedium(context)
                  .maxLines(2)
                  .ellipsis
                  .make(),
              subTitle?.text.caption(context).make(),
            ].withDivider(Gaps.vGap8),
          )
        ].withDivider(Gaps.hGap12),
      ),
    );
  }
}
