import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/button/btn.dart';

class BtnMoreArrow extends StatelessWidget {
  const BtnMoreArrow({Key? key, this.onPressed, required this.isMore, this.padding}) : super(key: key);

  final VoidCallback? onPressed;
  final bool isMore;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Btn(
      btnType: BtnType.TEXT,
      padding: padding ?? EdgeInsets.zero,
      child: isMore ? const Icon(Icons.keyboard_arrow_up) : const Icon(Icons.keyboard_arrow_down),
      onPressed: onPressed,
    );
  }
}
