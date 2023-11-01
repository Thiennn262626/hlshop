import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/app_ui_kit.dart';

class UserInfoTile extends StatelessWidget {
  const UserInfoTile({
    super.key,
    this.leading,
    this.title,
    this.titleFontWeight,
    this.subtitle,
    this.onEditPressed,
    this.padding,
    this.num,
    this.onPressedDelete,
  });

  const UserInfoTile.semiBold({
    super.key,
    this.leading,
    this.title,
    this.titleFontWeight = FontWeight.w600,
    this.subtitle,
    this.onEditPressed,
    this.padding,
    this.num,
    this.onPressedDelete,
  });

  final Widget? leading;
  final String? title;
  final FontWeight? titleFontWeight;
  final String? subtitle;
  final VoidCallback? onEditPressed;
  final VoidCallback? onPressedDelete;
  final EdgeInsetsGeometry? padding;
  final int? num;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 8),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (leading != null) leading!,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                title?.text
                    .titleMedium(context)
                    .fontWeight(titleFontWeight ?? FontWeight.w400)
                    .maxLines(2)
                    .ellipsis
                    .make()
                    .minHeight(20),
                subtitle?.text.caption(context).maxLines(2).ellipsis.make(),
              ].withDivider(Gaps.vGap4),
            ).expand(),
            if (onEditPressed != null)
              CardCupertinoEffect(
                onPressed: onEditPressed,
                child: const Icon(
                  PhosphorIcons.pencil_simple_line,
                  color: Colors.blue,
                ),
              ),
            CardCupertinoEffect(
              onPressed: onPressedDelete,
              child: const Icon(
                PhosphorIcons.trash,
                color: Colors.blue,
              ),
            ),
          ].withDivider(Gaps.hGap12),
        ),
      ),
    ).minHeight(54);
  }
}
