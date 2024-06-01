import 'package:hlshop/all_file/all_file.dart';

class ProductBottomBar extends StatelessWidget {
  const ProductBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      style: AppButtonTheme.primary(context),
      onPressed: () {
        context.read<ProductDetailCubit>().selectProduct(
              context: context,
            );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(PhosphorIcons.shopping_cart),
          Gaps.hGap8,
          'Thêm vào giỏ'.tr().text.semiBold.make(),
        ],
      ),
    );
  }
}
