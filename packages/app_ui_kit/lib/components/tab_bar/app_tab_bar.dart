import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({
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
    return TabBar(
      padding: padding,
      controller: controller,
      tabs: tabs,
      onTap: onTap,
      isScrollable: isScrollable,
    );
  }
}
