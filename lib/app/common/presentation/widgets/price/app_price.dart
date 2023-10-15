import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:hlshop/app/common/core/unit/price_unit.dart';

class AppPrice extends StatelessWidget {
  const AppPrice({
    super.key,
    required this.price,
    this.style,
  });

  final PriceUnit? price;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return price?.toPrice.text
            .textStyle(style)
            .color(
              style?.color ?? context.theme.colorScheme.secondary,
            )
            .fontWeight(
              style?.fontWeight ?? FontWeight.w600,
            )
            .make() ??
        const SizedBox.shrink();
  }
}

class AppListedPrice extends StatelessWidget {
  const AppListedPrice({super.key, this.price, this.style});

  final PriceUnit? price;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return price?.toPrice.text.lineThrough.textXS
            .textStyle(style)
            .colorNeutral(context)
            .make() ??
        const SizedBox.shrink();
  }
}
