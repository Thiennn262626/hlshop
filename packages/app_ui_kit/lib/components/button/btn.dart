import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:flutter/cupertino.dart';

enum BtnType {
  PRIMARY,
  DELETE,
  GHOST,
  GHOST_SUCCESS,
  TEXT,
}

class Btn extends StatelessWidget {
  const Btn({
    Key? key,
    this.btnType,
    this.padding,
    this.elevation,
    this.child,
    this.label,
    this.leading,
    this.loading = false,
    this.style,
    this.matchParent = false,
    this.fontWeight,
    this.fontSize,
    this.onPressed,
    this.loadingColor,
    this.enable,
    this.trailing,
    this.borderColor,
    this.borderWidth,
  }) : super(key: key);

  static const double btnHeightDefault = 42;
  static const double btnHeight_S = 38;
  static const double btnHeight_XS = 34;

  // Data
  final Widget? child;
  final Widget? leading;
  final Widget? trailing;
  final String? label;
  final bool loading;
  final Color? loadingColor;
  final bool? enable;

  // Set Style
  final BtnType? btnType;
  final ButtonStyle? style;

  // Set Style properties
  final Color? borderColor;
  final double? borderWidth;
  final EdgeInsetsGeometry? padding;
  final double? elevation;
  final bool matchParent;

  // Text Style
  final FontWeight? fontWeight;
  final double? fontSize;

  // Action
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    var finalFontWeight = fontWeight ?? FontWeight.w700;
    // Color? finalTextColor = Theme.of(context).onPrimary();

    // Style
    final ButtonStyle finalStyle;
    if (style != null) {
      finalStyle = style!;
    } else {
      switch (btnType) {
        case BtnType.PRIMARY:
        case null:
          finalStyle = AppButtonTheme.primary(
            context,
          );
          break;
        case BtnType.GHOST:
          finalStyle = AppButtonTheme.ghost(
            context,
          );
          break;
        case BtnType.DELETE:
          finalStyle = AppButtonTheme.primary(context);
          break;
        default:
          finalStyle = AppButtonTheme.primary(
            context,
          );
          break;
      }
    }

    final childWidget = label == null ? child : label?.text.fontWeight(finalFontWeight).size(fontSize ?? context.themeText.text.fontSize).make();

    final btnBody = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: matchParent ? MainAxisSize.max : MainAxisSize.min,
      children: [
        if (leading != null) leading!,
        Flexible(child: childWidget ?? const SizedBox.shrink()),
        if (trailing != null) trailing!,
      ],
    );

    var isDisable = false;
    isDisable = isDisable || !(enable ?? true);

    if (btnType == BtnType.TEXT) {
      return CupertinoButton(
        onPressed: loading ? () {} : (isDisable ? null : onPressed),
        padding: padding,
        minSize: 0,
        child: Stack(
          alignment: Alignment.center,
          children: [
            _buildLoading(context),
            btnBody.opacity(value: loading ? 0 : 1),
          ],
        ),
      );
    }

    return ElevatedButton(
      onPressed: loading ? () {} : (isDisable ? null : onPressed),
      style: finalStyle,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildLoading(context),
          btnBody.opacity(value: loading ? 0 : 1),
        ],
      ),
    );
  }

  Widget _buildLoading(BuildContext context) {
    return loading
        ? SizedBox(
            width: 18,
            height: 18,
            child: CircularProgressIndicator(
              color: loadingColor ?? Theme.of(context).colorScheme.onPrimary,
            ),
          )
        : const SizedBox.shrink();
  }
}
