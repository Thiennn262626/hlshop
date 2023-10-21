import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/card/card_cupertino_effect.dart';
import 'package:flutter/cupertino.dart';

class AppTile extends StatelessWidget {
  const AppTile({
    super.key,
    this.title,
    this.leading,
    this.trailing,
    this.subtitle,
    this.padding,
    this.onPressed,
    this.space,
  });

  final Widget? title;
  final Widget? leading;
  final Widget? trailing;
  final Widget? subtitle;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;

  final double? space;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: onPressed,
      child: Padding(
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (leading != null) leading!,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  title,
                  subtitle,
                ].withDivider(Gaps.vGap4),
              ).expand(),
              trailing ??
                  const Icon(
                    CupertinoIcons.right_chevron,
                  ),
            ].withDivider(SizedBox(width: space ?? Dimens.gap_dp12)),
          ),
        ),
      ),
    );
  }
}
