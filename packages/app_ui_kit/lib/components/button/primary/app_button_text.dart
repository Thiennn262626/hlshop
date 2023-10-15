import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:flutter/cupertino.dart';

class AppButtonText extends StatelessWidget {
  const AppButtonText({
    super.key,
    this.child,
    this.label,
    this.onPressed,
    this.color,
    this.padding,
    this.leading,
    this.trailing,
  });

  final Widget? child;
  final Widget? leading;
  final Widget? trailing;
  final String? label;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: padding,
      minSize: padding != null ? 0 : kMinInteractiveDimensionCupertino,
      onPressed: onPressed,
      child: _buildChild(context) ?? const SizedBox.shrink(),
    );
  }

  Widget? _buildChild(BuildContext context) {
    if (leading != null || trailing != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null) leading!,
          _buildLabel(context) ?? const SizedBox.shrink(),
          if (trailing != null) trailing!,
        ],
      );
    }
    return _buildLabel(context);
  }

  Widget? _buildLabel(BuildContext context) {
    return child ??
        label?.text.textBase.medium
            .color(color ?? Theme.of(context).primaryColor)
            .make();
  }
}
