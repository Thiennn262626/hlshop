import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/button/btn.dart';

class BtnSeeAll extends StatelessWidget {
  const BtnSeeAll({super.key, this.onPressed, this.padding});

  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Btn(
      btnType: BtnType.TEXT,
      label: 'seeAll',
      padding: padding,
      onPressed: onPressed,
    );
  }
}
