import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/app_ui_kit.dart';
import 'package:app_ui_kit/components/section_wrapper/section_title.dart';

class SectionContainer extends StatelessWidget {
  const SectionContainer({
    super.key,
    required this.title,
    required this.child,
    this.space = Dimens.pad_XS,
    this.titlePadding,
    this.leading,
    this.trailing,
    this.seeAll,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  const SectionContainer.content({
    super.key,
    required this.title,
    this.leading,
    this.trailing,
    this.seeAll,
    required this.child,
    this.space = Dimens.pad_XS,
    this.titlePadding = EdgeInsets.zero,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  final String title;
  final Widget? leading;
  final Widget? trailing;
  final EdgeInsetsGeometry? titlePadding;
  final VoidCallback? seeAll;

  final double space;
  final CrossAxisAlignment crossAxisAlignment;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        SectionTitle(
          title: title,
          padding: titlePadding,
          leading: leading,
          trailing: trailing,
          seeAll: seeAll,
        ),
        SizedBox(height: space),
        child,
      ],
    );
  }
}
