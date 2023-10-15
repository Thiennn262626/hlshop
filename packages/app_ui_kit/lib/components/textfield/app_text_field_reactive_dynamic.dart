import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/textfield/widget/text_field_btn_clear_builder.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppTextFieldReactiveDynamic<T> extends StatefulWidget {
  const AppTextFieldReactiveDynamic({
    super.key,
    this.controller,
    this.formControlName,
    this.formControl,
    this.focusNode,
    this.onChanged,
    this.decoration,
    this.hintText,
    this.minLines,
    this.maxLines,
    this.keyboardType,
    this.textAlign = TextAlign.start,
    this.textInputAction,
    this.obscureText = false,
    this.onLostFocus,
    this.enableClearButton = false,
    this.validationMessages,
    this.valueAccessor,
  }) : assert(
            (formControlName != null && formControl == null) ||
                (formControlName == null && formControl != null),
            'Must provide a formControlName or a formControl, but not both at the same time.');

  final TextEditingController? controller;
  final String? formControlName;
  final FormControl<T>? formControl;
  final ControlValueAccessor<T, String>? valueAccessor;
  final Map<String, ValidationMessageFunction>? validationMessages;

  final FocusNode? focusNode;
  final ValueChanged<String>? onLostFocus;

  final ValueChanged<String>? onChanged;

  final InputDecoration? decoration;
  final String? hintText;
  final int? minLines;
  final int? maxLines;

  final bool enableClearButton;

  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextAlign textAlign;

  @override
  State<AppTextFieldReactiveDynamic<T>> createState() => _AppTextFieldState();
}

class _AppTextFieldState<T> extends State<AppTextFieldReactiveDynamic<T>> {
  FocusNode? _focusNode;
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    _focusInit();
    super.initState();
  }

  void _focusInit() {
    if (widget.onLostFocus != null) {
      _focusNode = widget.focusNode ?? FocusNode();
      _focusNode?.addListener(() {
        if (!(_focusNode?.hasFocus ?? false)) {
          widget.onLostFocus?.call(_controller.text);
        }
      });
    }
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode?.dispose();
    }
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  void _onTextChange() {
    widget.onChanged?.call(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldBtnClearBuilder(
      controller: _controller,
      enabled: widget.enableClearButton,
      onClear: _onClearCLick,
      inputDecoration:
          (widget.decoration ?? AppTextFieldTheme.primary(context)).copyWith(
        hintText: widget.hintText,
      ),
      builder: (context, inputDecoration) => ReactiveTextField<T>(
        valueAccessor: widget.valueAccessor,
        formControlName: widget.formControlName,
        formControl: widget.formControl,

        obscureText: widget.obscureText,
        validationMessages: widget.validationMessages ??
            {
              ValidationMessage.required: (value) =>
                  context.tr('Vui lòng nhập thông tin'),
            },
        onChanged: (val) {
          _onTextChange();
        },
        minLines: widget.minLines,
        maxLines: widget.obscureText ? 1 : widget.maxLines,
        textInputAction: widget.textInputAction,
        controller: _controller,
        focusNode: _focusNode,
        keyboardType: widget.keyboardType,
        textAlign: widget.textAlign,
        decoration: inputDecoration,
      ),
    );
  }

  void _onClearCLick() {
    AbstractControl<dynamic>? control;
    if (widget.formControl != null) {
      control = widget.formControl;
    } else if (widget.formControlName != null) {
      control = ReactiveForm.of(context)?.findControl(widget.formControlName!);
    }
    control?.value = null;
  }
}
