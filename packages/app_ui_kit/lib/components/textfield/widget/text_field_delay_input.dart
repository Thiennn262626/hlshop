import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

mixin TextFiledInputDelayCallBack<T extends StatefulWidget> on State<T> {
  Timer? _timer;

  void onTextChangeDelayCallBack({
    Duration userStopTypingDelay = const Duration(seconds: 1),
    required VoidCallback onUserStopTyping,
  }) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(userStopTypingDelay, () {
      if (mounted) {
        onUserStopTyping();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

class AppTextDelayInput extends StatefulWidget {
  const AppTextDelayInput({
    super.key,
    required this.child,
    required this.controller,
    this.userStopTypingDelay = const Duration(milliseconds: 1000),
    this.onUserStopTyping,
  });

  final Widget child;

  final Duration userStopTypingDelay;
  final ValueChanged<String>? onUserStopTyping;

  final TextEditingController controller;

  @override
  State<AppTextDelayInput> createState() => _AppTextDelayInputState();
}

class _AppTextDelayInputState extends State<AppTextDelayInput> with TextFiledInputDelayCallBack {
  @override
  void initState() {
    if (widget.onUserStopTyping != null) {
      widget.controller.addListener(_onTextChange);
    }
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextChange);
    super.dispose();
  }

  void _onTextChange() {
    // wait for user to stop typing
    onTextChangeDelayCallBack(
      userStopTypingDelay: widget.userStopTypingDelay,
      onUserStopTyping: () {
        widget.onUserStopTyping?.call(widget.controller.text);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
