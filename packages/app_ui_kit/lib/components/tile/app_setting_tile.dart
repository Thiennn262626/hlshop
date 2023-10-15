import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/app_ui_kit.dart';

class AppSettingTile extends StatelessWidget {
  const AppSettingTile({
    super.key,
    required this.title,
    this.iconWidget,
    this.iconData,
    this.onPressed,
  });

  final String title;
  final Widget? iconWidget;
  final IconData? iconData;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppTile(
      title: title.text.colorDark(context).make(),
      leading: iconWidget ??
          Icon(
            iconData,
            color: context.primaryColor,
          ),
      trailing: const SizedBox.shrink(),
      onPressed: onPressed,
    ).minHeight(54);
  }
}
