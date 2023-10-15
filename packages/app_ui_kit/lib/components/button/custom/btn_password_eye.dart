import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/app_ui_kit.dart';

class BtnPasswordEye extends StatelessWidget {
  const BtnPasswordEye({super.key, required this.passwordVisible, required this.onPasswordVisibleChanged});

  final bool passwordVisible;
  final ValueChanged<bool> onPasswordVisibleChanged;

  @override
  Widget build(BuildContext context) {
    return AppButtonIcon(
      icon: passwordVisible ? Icons.visibility : Icons.visibility_off,
      iconColor: context.theme.hintColor,
      onPressed: () {
        onPasswordVisibleChanged(!passwordVisible);
      },
    );
  }
}
