import 'package:hlshop/all_file/all_file.dart';

class ProductHeightLight extends StatelessWidget {
  const ProductHeightLight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _HeightLightItem(
          icon: Assets.icons.product.authentic100.svg(),
          content: '${'Chính hãng'.tr()}\n100%',
        ),
        _HeightLightItem(
          icon: Assets.icons.product.returnInDatys.svg(),
          content: 'Đổi trả trong\n{} ngày'.tr(args: ['30']),
        ),
        _HeightLightItem(
          icon: Assets.icons.product.freeShipping.svg(),
          content: 'Miễn phí\nvận chuyển'.tr(),
        ),
      ],
    ).pDefault();
  }
}

class _HeightLightItem extends StatelessWidget {
  const _HeightLightItem({
    super.key,
    required this.icon,
    required this.content,
  });

  final Widget icon;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: context.themeColor.primaryLighter,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: icon,
          ),
        ),
        const SizedBox(height: 8),
        content.text.colorPrimaryDark(context).center.make(),
      ],
    );
  }
}
