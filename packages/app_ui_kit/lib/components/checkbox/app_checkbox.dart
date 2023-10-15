import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class AppCheckBox extends StatefulWidget {
  const AppCheckBox({
    super.key,
    this.label,
    this.onChanged,
    this.initialValue,
    this.contentPadding,
    this.visualDensity,
    this.tristate = false,
    this.dense,
    this.enabled,
  });

  // factory min visualDensity
  factory AppCheckBox.minPadding({
    Key? key,
    dynamic? label,
    ValueChanged<bool?>? onChanged,
    bool? initialValue,
    EdgeInsetsGeometry? contentPadding,
    VisualDensity? visualDensity,
    bool? tristate,
    bool? dense,
    bool? enabled,
  }) {
    return AppCheckBox(
      key: key,
      label: label,
      onChanged: onChanged,
      initialValue: initialValue,
      visualDensity: visualDensity ??
          const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
      contentPadding: contentPadding ?? EdgeInsets.zero,
      tristate: tristate ?? false,
      dense: dense,
      enabled: enabled,
    );
  }

  final dynamic? label;
  final bool? initialValue;
  final ValueChanged<bool?>? onChanged;
  final bool? enabled;

  final EdgeInsetsGeometry? contentPadding;
  final VisualDensity? visualDensity;
  final bool tristate;
  final bool? dense;

  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  late bool isChecked;

  @override
  void initState() {
    isChecked =
        widget.initialValue ?? (widget.tristate ? null : false) ?? false;
    super.initState();
  }

  @override
  void didUpdateWidget(AppCheckBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != null) {
      isChecked = widget.initialValue!;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget? labelWidget;
    final labelLocal = widget.label;
    if (labelLocal is Widget) {
      labelWidget = labelLocal;
    } else if (labelLocal is String) {
      labelWidget = labelLocal.text.make();
    }

    if (labelLocal == null) {
      return Opacity(
        opacity: widget.enabled == false ? 0.5 : 1,
        child: Checkbox(
          key: widget.key,
          value: isChecked,
          visualDensity: widget.visualDensity,
          tristate: widget.tristate,
          onChanged: widget.enabled == false
              ? null
              : (value) {
                  isChecked = !isChecked;
                  widget.onChanged?.call(isChecked);
                },
        ),
      );
    }

    return CheckboxListTile(
      key: widget.key,
      enabled: widget.enabled,
      value: isChecked,
      tristate: widget.tristate,
      title: labelWidget,
      contentPadding: widget.contentPadding,
      visualDensity: widget.visualDensity,
      dense: widget.dense,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (value) {
        isChecked = !isChecked;
        widget.onChanged?.call(isChecked);
      },
    );
  }
}
