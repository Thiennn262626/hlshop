import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/button/primary/app_button_icon.dart';
import 'package:flutter/cupertino.dart';

class TextFieldBtnClearBuilder extends StatefulWidget {
  const TextFieldBtnClearBuilder({
    super.key,
    required this.controller,
    required this.inputDecoration,
    required this.builder,
    this.enabled = false,
    this.onClear,
  });

  final bool enabled;
  final TextEditingController controller;
  final InputDecoration inputDecoration;
  final Widget Function(BuildContext context, InputDecoration inputDecoration) builder;
  final VoidCallback? onClear;

  @override
  State<TextFieldBtnClearBuilder> createState() => _TextFieldBtnClearBuilderState();
}

class _TextFieldBtnClearBuilderState extends State<TextFieldBtnClearBuilder> {
  bool _isShowClearBtn = false;

  @override
  void initState() {
    super.initState();
    if (widget.enabled) {
      widget.controller.addListener(_updateClearButtonVisibility);
    }
  }

  @override
  void dispose() {
    if (widget.enabled) {
      widget.controller.removeListener(_updateClearButtonVisibility);
    }
    super.dispose();
  }

  void _updateClearButtonVisibility() {
    setState(() {
      _isShowClearBtn = widget.controller.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.enabled) {
      return widget.builder(context, widget.inputDecoration);
    }

    return widget.builder(
      context,
      widget.inputDecoration.copyWith(
        suffixIcon: _isShowClearBtn
            ? AppButtonIcon(
                icon: CupertinoIcons.clear_circled_solid,
                iconColor: context.theme.hintColor,
                iconSize: 20,
                onPressed: () {
                  widget.controller.clear();
                  widget.onClear?.call();
                },
              )
            : widget.inputDecoration.suffixIcon,
      ),
    );
  }
}
