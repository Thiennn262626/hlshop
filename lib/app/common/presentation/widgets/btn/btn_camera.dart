import 'package:hlshop/all_file/all_file.dart';

class BtnCamera extends StatelessWidget {
  const BtnCamera({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppButtonIcon(
      icon: PhosphorIcons.camera,
      iconColor: Colors.white,
      onPressed: onPressed,
    ).backgroundColor(context.themeColor.greyDark).cornerRadius(Dimens.rad_max);
  }
}
