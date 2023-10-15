import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/card/card_cupertino_effect.dart';

class AppRadioButton<T> extends StatelessWidget {
  const AppRadioButton({
    super.key,
    required this.value,
    this.groupValue,
    this.title,
    this.onChanged,
    this.iconPadding,
    this.matchParen = true,
  });

  final dynamic title;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final EdgeInsetsGeometry? iconPadding;
  final bool matchParen;

  @override
  Widget build(BuildContext context) {
    final Widget? titleWidget;
    final titleLocal = title;
    if (titleLocal is Widget) {
      titleWidget = titleLocal;
    } else if (titleLocal is String) {
      titleWidget = Text(titleLocal);
    } else {
      titleWidget = const SizedBox.shrink();
    }

    return CardCupertinoEffect(
      onPressed: () => onChanged?.call(value),
      child: Row(
        mainAxisSize: matchParen ? MainAxisSize.max : MainAxisSize.min,
        children: [
          Padding(
            padding: iconPadding ?? const EdgeInsets.all(4),
            child: Radio<T>(
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
              visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            ),
          ),
          Expanded(
            flex: matchParen ? 1 : 0,
            child: titleWidget,
          ),
        ],
      ),
    );
  }
}
