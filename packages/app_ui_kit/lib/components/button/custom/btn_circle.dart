import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/button/btn.dart';

class BtnCircle extends StatelessWidget {
  const BtnCircle({Key? key, required this.child, this.onPressed}) : super(key: key);

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Btn(
      btnType: BtnType.TEXT,
      onPressed: onPressed,
      child: child,
    );
  }
}
