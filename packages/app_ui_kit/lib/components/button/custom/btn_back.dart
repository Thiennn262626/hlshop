import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/app_ui_kit.dart';
import 'package:app_ui_kit/components/button/btn.dart';
import 'package:app_ui_kit/components/button/primary/app_button.dart';
import 'package:flutter/cupertino.dart';

class BtnBack extends StatelessWidget {
  final VoidCallback? onPress;
  final double size;
  final bool? checkCanPop;

  const BtnBack({
    Key? key,
    this.onPress,
    this.size = 25,
    this.checkCanPop = true,
  }) : super(key: key);

  static bool isShowBtnBack(BuildContext context) => (ModalRoute.of(context)?.canPop ?? false) == true;

  @override
  Widget build(BuildContext context) {
    if (checkCanPop == true) {
      if (!isShowBtnBack(context)) {
        return const SizedBox.shrink();
      }
    }

    return AppButtonText(
      onPressed: onPress ?? () => Navigator.of(context).pop(),
      child: Icon(
        CupertinoIcons.back,
        size: size,
        color: context.textTheme.bodyMedium!.color,
      ),
    );
  }
}
