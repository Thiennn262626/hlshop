import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/card/card_cupertino_effect.dart';

class BtnEyeActive extends StatelessWidget {
  const BtnEyeActive({
    super.key,
    required this.passwordVisible,
    required this.onPasswordVisibleChanged,
  });

  final bool passwordVisible;
  final ValueChanged<bool> onPasswordVisibleChanged;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      child: Icon(
        passwordVisible ? Icons.visibility : Icons.visibility_off,
        color: Colors.grey.shade500,
      ),
      onPressed: () {
        onPasswordVisibleChanged(!passwordVisible);
      },
    );
  }
}
