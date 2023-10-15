import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:velocity_x/velocity_x.dart';

class AppSafeArea extends _AppSafeArea {
  const AppSafeArea({
    Key? key,
    required Widget child,
    bool? top,
    bool? bottom,
    bool? left,
    bool? right,
    EdgeInsets? minimum,
    bool? showDivider,
  }) : super(
          key: key,
          child: child,
          top: top,
          bottom: bottom,
          left: bottom,
          right: bottom,
          minimum: minimum,
          showDivider: showDivider,
        );
}

class _AppSafeArea extends StatelessWidget {
  const _AppSafeArea({
    Key? key,
    required this.child,
    this.minimum,
    this.top,
    this.left,
    this.right,
    this.bottom,
    this.showDivider,
  }) : super(key: key);

  final Widget child;
  final EdgeInsets? minimum;
  final bool? top;
  final bool? bottom;
  final bool? left;
  final bool? right;
  final bool? showDivider;

  @override
  Widget build(BuildContext context) {
    var safeArea = SafeArea(
      minimum: minimum ?? EdgeInsets.zero,
      top: top ?? true,
      bottom: bottom ?? true,
      left: left ?? true,
      right: right ?? true,
      child: child,
    );

    if (showDivider == true) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(),
          safeArea,
        ],
      ).backgroundColor(context.theme.colorScheme.surface);
    }

    return safeArea;
  }
}
