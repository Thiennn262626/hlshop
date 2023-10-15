import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({
    super.key,
    required this.child,
    this.elevation,
    this.padding,
    this.expandWidth = false,
  });

  final Widget child;
  final bool expandWidth;
  final double? elevation;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    Widget finalChild = SafeArea(
      minimum: Dimens.bottomMinimum,
      top: false,
      bottom: true,
      left: false,
      right: false,
      child: Padding(
        padding: padding ?? const EdgeInsets.only(left: Dimens.pad, right: Dimens.pad, top: 4),
        child: child,
      ),
    );

    if (expandWidth) {
      finalChild = SizedBox(
        width: double.infinity,
        child: finalChild,
      );
    }

    return BottomAppBar(
      elevation: elevation,
      child: finalChild.backgroundColor(context.theme.colorScheme.surface),
    );
  }
}
