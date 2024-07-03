import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/textfield/widget/text_field_btn_clear_builder.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.controller,
    this.initialValue,
    this.focusNode,
    this.onChanged,
    this.decoration,
    this.keyboardType,
    this.textAlign = TextAlign.start,
    this.textInputAction,
    this.onLostFocus,
    this.enableClearButton = false,
    this.autoFocus = false,
  });

  final TextEditingController? controller;
  final String? initialValue;
  final FocusNode? focusNode;
  final ValueChanged<String>? onLostFocus;

  final ValueChanged<String>? onChanged;

  final InputDecoration? decoration;

  final bool autoFocus;
  final bool enableClearButton;

  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextAlign textAlign;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  FocusNode? _focusNode;
  late TextEditingController _controller;
  Timer? _debounce;

  @override
  void initState() {
    _controller = widget.controller ??
        TextEditingController(
          text: widget.initialValue ?? '',
        );
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
    _debounce?.cancel();
    super.dispose();
  }

  void _onTextChange() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(seconds: 1), () {
      widget.onChanged?.call(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldBtnClearBuilder(
      controller: _controller,
      enabled: widget.enableClearButton,
      inputDecoration: widget.decoration ?? AppTextFieldTheme.primary(context),
      builder: (context, inputDecoration) => TextFormField(
        autofocus: widget.autoFocus,
        onChanged: (val) {
          _onTextChange();
        },
        textInputAction: widget.textInputAction,
        controller: _controller,
        focusNode: _focusNode,
        keyboardType: widget.keyboardType,
        textAlign: widget.textAlign,
        decoration: inputDecoration,
      ),
    );
  }
}
