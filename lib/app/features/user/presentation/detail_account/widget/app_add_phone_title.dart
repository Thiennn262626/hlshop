import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/app_ui_kit.dart';

class AppAddPhoneTile extends StatelessWidget {
  const AppAddPhoneTile({
    super.key,
    this.leading,
    this.title,
    this.titleFontWeight,
    this.subtitle,
    this.onPressed,
    this.padding,
  });

  const AppAddPhoneTile.semiBold({
    super.key,
    this.leading,
    this.title,
    this.titleFontWeight = FontWeight.w600,
    this.subtitle,
    this.onPressed,
    this.padding,
  });

  final Widget? leading;
  final String? title;
  final FontWeight? titleFontWeight;
  final String? subtitle;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: CardCupertinoEffect(
        onPressed: onPressed,
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
                const Icon(
                  PhosphorIcons.plus,
                  color: Colors.blue,
                ),
            ].withDivider(Gaps.hGap12),
          ),
        ),
      ).minHeight(54),
    );
  }
}
