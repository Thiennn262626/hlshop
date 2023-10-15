import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/card/card_cupertino_effect.dart';

class ChipItem extends StatelessWidget {
  const ChipItem({
    super.key,
    this.child,
    required this.isSelected,
    this.onPressed,
  });

  final dynamic child;
  final bool isSelected;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    Widget finalChild;
    final local = child;
    if (local is String) {
      finalChild = local.text.medium
          .color(
            isSelected ? Theme.of(context).primaryColor : context.themeColor.text,
          )
          .make();
    } else if (local is Widget) {
      finalChild = local;
    } else {
      finalChild = const SizedBox.shrink();
    }

    return CardCupertinoEffect(
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.rad_max),
          color: isSelected ? Theme.of(context).primaryColor : context.themeColor.divider,
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.pad_XS,
            vertical: Dimens.pad_XS3,
          ),
          child: finalChild,
        ),
      ),
    );
  }
}
