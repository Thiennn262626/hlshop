import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/button/btn.dart';

class ShowMoreBtn1 extends StatelessWidget {
  const ShowMoreBtn1({
    super.key,
    required this.isMore,
    required this.onPressed,
  });

  final bool isMore;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Btn(
      btnType: BtnType.GHOST,
      label: isMore ? 'viewLess' : 'viewMore',
      fontWeight: FontWeight.w400,
      trailing: Icon(isMore ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded),
      onPressed: onPressed,
    ).objectBottomCenter();
  }
}
