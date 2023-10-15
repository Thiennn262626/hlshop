import 'package:hlshop/all_file/all_file.dart';

class BtnFilter extends StatelessWidget {
  const BtnFilter({
    super.key,
    this.onPressed,
    this.isActive = true,
    this.padding,
    this.iconSize,
    this.showActiveText = false,
  });

  final VoidCallback? onPressed;
  final bool isActive;
  final EdgeInsetsGeometry? padding;
  final double? iconSize;
  final bool showActiveText;

  @override
  Widget build(BuildContext context) {
    return AppButtonText(
      onPressed: onPressed,
      padding: padding ?? Dimens.edge_XS4,
      child: Icon(
        PhosphorIcons.sliders_horizontal,
        color: Theme.of(context).iconTheme.color,
      ),
    );
  }
}
