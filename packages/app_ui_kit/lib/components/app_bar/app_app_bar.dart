import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/app_bar/base_app_bar_args.dart';
import 'package:app_ui_kit/components/button/custom/btn_back.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    super.key,
    this.title,
    this.args,
    this.height,
  });

  final Object? title;
  final double? height;

  final AppBarArgs? args;

  @override
  Widget build(BuildContext context) {
    Widget? titleFinal;
    if (title != null) {
      if (title is String) {
        titleFinal = AppAppBarTitleText(
          title: title as String,
          maxLine: args?.maxLine,
          textAlign: args?.textAlign,
          color: args?.color,
        );
      } else if (title is Widget) {
        titleFinal = title as Widget;
      }
    }
    final bthBack =
        (BtnBack.isShowBtnBack(context) && (args?.hideBackButton != true))
            ? const BtnBack()
            : null;

    return AppBar(
      title: titleFinal,
      centerTitle: args?.centerTitle ?? true,
      elevation: args?.elevation ?? 0.5,
      titleSpacing: args?.titleSpacing,
      leading: args?.leading ?? bthBack,
      bottom: args?.bottom,
      backgroundColor: args?.backgroundColor,
      actions: args?.actions,
      flexibleSpace: args?.flexibleSpace,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? kToolbarHeight);
}

class AppAppBarTitleText extends StatelessWidget {
  const AppAppBarTitleText({
    super.key,
    required this.title,
    this.maxLine,
    this.textAlign,
    this.color,
    this.maxFontSize,
  });

  final String title;
  final int? maxLine;
  final TextAlign? textAlign;
  final Color? color;
  final double? maxFontSize;

  @override
  Widget build(BuildContext context) {
    return title.textAuto
        .textStyle(Theme.of(context).textTheme.titleLarge)
        .minFontSize(FontSizeService().text_S)
        .maxLines(maxLine ?? 1)
        .align(textAlign ?? TextAlign.start)
        .color(color)
        .ellipsis
        .semiBold
        .make();
  }
}
