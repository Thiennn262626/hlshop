import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/presentation/detail/cubit/product_detail_cubit.dart';

class ProductBottomBar extends StatelessWidget {
  const ProductBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 70,
            child: AppButton(
              style: AppButtonTheme.ghost(context),
              onPressed: () {},
              child: const Icon(PhosphorIcons.phone),
            ),
          ),
          SizedBox(
            width: 70,
            child: AppButton(
              style: AppButtonTheme.ghost(context),
              onPressed: () {},
              child: const Icon(PhosphorIcons.chat_circle_text),
            ),
          ),
          AppButton(
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
                'Chọn mua'.tr().text.semiBold.make(),
              ],
            ),
          ).expand(),
        ].withDivider(Gaps.hGap8),
      ),
    );
  }
}
