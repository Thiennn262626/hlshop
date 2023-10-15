import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:reactive_forms/reactive_forms.dart';

enum RadioBtnType {
  dot,
  rec,
}

class AppRadioReactive<T> extends StatelessWidget {
  const AppRadioReactive({
    super.key,
    this.formControl,
    this.formControlName,
    this.label,
    required this.value,
    bool? showBorder,
    this.type = RadioBtnType.dot,
    this.inActiveBorderColor,
    this.mainAxisAlignment,
    this.labelWidget,
  }) : _showBorder = showBorder ?? type == RadioBtnType.rec;

  final String? label;
  final Widget? labelWidget;
  final bool _showBorder;
  final Color? inActiveBorderColor;
  final T value;
  final RadioBtnType type;
  final MainAxisAlignment? mainAxisAlignment;

  // Set the control - use formControl
  final FormControl<T>? formControl;

  // or
  final String? formControlName;

  @override
  Widget build(BuildContext context) {
    final _formControl = formControl ??
        (ReactiveForm.of(context)?.findControl(formControlName!)
            as FormControl<T>?);

    return GestureDetector(
      onTap: () {
        _formControl?.updateValue(value);
      },
      child: ReactiveStatusListenableBuilder(
        formControl: _formControl,
        builder: (context, control, child) {
          final isActive = control.value == value;
          return Container(
            decoration: _getBorder(context, isActive),
            padding:
                type == RadioBtnType.rec ? Dimens.edge_XS2 : EdgeInsets.zero,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
              children: [
                if (type == RadioBtnType.dot)
                  ReactiveRadio<T>(
                    formControl: _formControl,
                    value: value,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  )
                else
                  SizedBox(
                    width: _showBorder ? 14 : 6,
                  ),
                Flexible(
                  child: labelWidget ??
                      label?.text
                          .color(
                            type == RadioBtnType.rec
                                ? (isActive
                                    ? context.theme.primaryColor
                                    : context.textTheme.bodyMedium!.color!)
                                : null,
                          )
                          .make() ??
                      const SizedBox.shrink(),
                ),
              ],
            ).pOnly(right: _showBorder ? 14 : 6),
          );
        },
      ),
    );
  }

  BoxDecoration _getBorder(BuildContext context, bool isActive) {
    Color borderColor;
    if (isActive) {
      borderColor = type == RadioBtnType.dot
          ? context.theme.primaryColor
          : context.theme.primaryColor;
    } else {
      borderColor = _showBorder
          ? (inActiveBorderColor ?? Colors.transparent)
          : Colors.transparent;
    }

    final fillWithBorder = type == RadioBtnType.rec
        ? (isActive
            ? context.themeColor.primaryLighter
            : context.themeColor.divider)
        : Colors.transparent;
    return _showBorder
        ? BoxDecoration(
            border: Border.all(
              color: borderColor,
            ),
            color: fillWithBorder,
            borderRadius: BorderRadius.circular(
              AppButtonTheme.defaultRadius,
            ),
          )
        : BoxDecoration(
            color: isActive && type == RadioBtnType.rec
                ? context.themeColor.lightPrimary
                : Colors.transparent,
          );
  }
}
