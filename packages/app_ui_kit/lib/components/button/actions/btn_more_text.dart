import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/button/btn.dart';

class BtnMoreText extends StatelessWidget {
  const BtnMoreText({super.key, this.onPressed, required this.isMore, this.padding});

  final VoidCallback? onPressed;
  final bool isMore;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Btn(
      label: isMore ? 'viewLess' : 'viewMore',
      btnType: BtnType.TEXT,
      padding: padding ?? EdgeInsets.zero,
      onPressed: onPressed,
    );
  }
}
