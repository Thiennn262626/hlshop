import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/app_ui_kit.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    this.padding,
    this.leading,
    this.trailing,
    this.seeAll,
  });

  final String title;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? seeAll;

  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? Dimens.edge_x_default,
      child: Row(
        children: [
          leading ?? const SizedBox.shrink(),
          title.text.headlineSmall(context).make().expand(),
          _buildTrailing(context) ?? const SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget? _buildTrailing(BuildContext context) {
    if (seeAll != null) {
      return AppButtonText(
        label: 'Xem tất cả',
        padding: EdgeInsets.zero,
        onPressed: seeAll,
      );
    }
    return trailing;
  }
}
