import 'package:hlshop/all_file/all_file.dart';

class ProductDiscount1 extends StatelessWidget {
  const ProductDiscount1({
    super.key,
    this.percent,
    this.child,
  });

  final String? percent;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          const BorderRadius.only(bottomRight: Radius.circular(Dimens.rad)),
      clipBehavior: Clip.hardEdge,
      child: _content(context).pSymmetric(h: 8, v: 6).backgroundColor(
            context.themeColor.red,
          ),
    );
  }

  Widget _content(BuildContext context) {
    if (child != null) {
      return child!;
    }

    return '-$percent%'
        .text
        .caption(context)
        .medium
        .colorOnPrimary(
          context,
        )
        .make();
  }
}
