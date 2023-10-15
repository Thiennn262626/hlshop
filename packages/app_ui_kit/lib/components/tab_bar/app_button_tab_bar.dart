import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class AppButtonTabBar extends StatelessWidget {
  const AppButtonTabBar({
    super.key,
    this.controller,
    required this.tabs,
    this.onTap,
    this.padding,
    this.isScrollable = false,
  });

  final List<Tab> tabs;
  final void Function(int)? onTap;
  final TabController? controller;
  final EdgeInsetsGeometry? padding;
  final bool isScrollable;

  @override
  Widget build(BuildContext context) {
    final bg = context.themeColor.divider;
    final color = context.theme.primaryColor;
    return ButtonsTabBar(
      controller: controller,
      tabs: tabs,
      onTap: onTap,
      contentPadding: Dimens.edge_x_S,
      unselectedBackgroundColor: bg,
      backgroundColor: context.themeColor.primaryLighter,
      labelStyle: TextStyle(
        color: color,
      ),
      radius: Dimens.rad_max,
      unselectedBorderColor: bg,
      borderColor: color,
      borderWidth: 1,
    );
  }
}
