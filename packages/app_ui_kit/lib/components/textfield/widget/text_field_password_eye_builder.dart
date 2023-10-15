import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/button/custom/btn_password_eye.dart';
import 'package:app_ui_kit/components/button/primary/app_button_icon.dart';
import 'package:flutter/cupertino.dart';

class TextFieldPasswordEyeBuilder extends StatefulWidget {
  const TextFieldPasswordEyeBuilder({
    super.key,
    required this.inputDecoration,
    required this.builder,
  });

  final InputDecoration inputDecoration;
  final Widget Function(BuildContext context, InputDecoration inputDecoration, bool isTextVisible) builder;

  @override
  State<TextFieldPasswordEyeBuilder> createState() => _TextFieldPasswordEyeBuilderState();
}

class _TextFieldPasswordEyeBuilderState extends State<TextFieldPasswordEyeBuilder> {
  bool _isTextVisible = false;

  @override
  Widget build(BuildContext context) {
    return widget.builder(
      context,
      widget.inputDecoration.copyWith(
        suffixIcon: BtnPasswordEye(
          passwordVisible: _isTextVisible,
          onPasswordVisibleChanged: (value) {
            setState(() {
              _isTextVisible = value;
            });
          },
        ),
      ),
      _isTextVisible,
    );
  }
}
