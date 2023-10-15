import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_utils/view/app_info_utils.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class DismissKeyboard extends StatelessWidget {
  const DismissKeyboard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // behavior: HitTestBehavior.translucent,
      onTap: () {
        AppInfoUtils.dismissKeyboard(context);
      },
      child: child,
    );
  }
}
