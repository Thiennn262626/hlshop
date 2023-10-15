import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/card/card_cupertino_effect.dart';

class BadgedCount extends StatelessWidget {
  const BadgedCount({
    super.key,
    this.badgeBorderColor,
    this.count = 0,
    this.topOffset = 3,
    this.rightOffset = -6,
    this.padding,
    required this.onPressed,
    required this.icon,
  });

  final VoidCallback onPressed;
  final Widget icon;

  final EdgeInsets? padding;
  final Color? badgeBorderColor;
  final int count;
  final double topOffset;
  final double rightOffset;

  @override
  Widget build(BuildContext context) {
    String displayCount;
    final overCount = count > 9;
    if (overCount) {
      displayCount = '9+';
    } else {
      displayCount = count.toString();
    }
    return CardCupertinoEffect(
      onPressed: onPressed,
      child: Padding(
        padding: padding ?? Dimens.edge_XS2,
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          fit: StackFit.loose,
          children: [
            icon,
            if (count > 0)
              Positioned(
                top: topOffset,
                right: rightOffset,
                child: Container(
                  alignment: Alignment.center,
                  constraints: const BoxConstraints(
                    minWidth: 21,
                    minHeight: 17,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: badgeBorderColor ?? Colors.white,
                    ),
                    borderRadius: overCount ? BorderRadius.circular(Dimens.rad_max) : null,
                    color: Colors.red,
                    shape: overCount ? BoxShape.rectangle : BoxShape.circle,
                  ),
                  child: displayCount.text.size(9).medium.letterSpacing(-1).make(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
