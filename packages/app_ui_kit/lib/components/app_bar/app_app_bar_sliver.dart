import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/app_bar/app_app_bar.dart';
import 'package:app_ui_kit/components/app_bar/base_app_bar_args.dart';
import 'package:app_ui_kit/components/button/custom/btn_back.dart';

class AppAppBarSliver extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBarSliver({
    super.key,
    this.title,
    this.args,
    this.sliverArgs,
  });

  final Object? title;

  final AppBarArgs? args;
  final AppBarSliverArgs? sliverArgs;

  @override
  Widget build(BuildContext context) {
    Widget? titleFinal;
    if (title != null) {
      if (title is String) {
        titleFinal = AppAppBarTitleText(
          title: title as String,
          maxLine: args?.maxLine,
        );
      } else if (title is Widget) {
        titleFinal = title as Widget;
      }
    }
    final bthBack = BtnBack.isShowBtnBack(context) ? const BtnBack() : null;

    return SliverAppBar(
      title: titleFinal,
      pinned: sliverArgs?.pinned ?? true,
      snap: sliverArgs?.snap ?? false,
      floating: sliverArgs?.floating ?? false,
      centerTitle: args?.centerTitle ?? false,
      elevation: args?.elevation ?? 0.5,
      titleSpacing: args?.titleSpacing,
      leading: args?.leading ?? bthBack,
      bottom: args?.bottom,
      backgroundColor: args?.backgroundColor,
      actions: args?.actions,
      actionsIconTheme: context.theme.iconTheme,
      flexibleSpace: args?.flexibleSpace,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
