import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class FocusBuilder extends StatefulWidget {
  const FocusBuilder({
    super.key,
    required this.builder,
  });

  final Widget Function(BuildContext context, bool hasFocus) builder;

  @override
  State<FocusBuilder> createState() => _FocusBuilderState();
}

class _FocusBuilderState extends State<FocusBuilder> {
  bool _hasFocus = false;

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          _hasFocus = hasFocus;
        });
      },
      child: widget.builder(context, _hasFocus),
    );
  }
}
