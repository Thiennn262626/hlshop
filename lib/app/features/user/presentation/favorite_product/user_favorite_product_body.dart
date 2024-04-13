import 'package:hlshop/all_file/all_file.dart';

class UserFavoriteProductBody extends StatelessWidget {
  const UserFavoriteProductBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      slivers: [
        BlocBuilder<UserFavoriteProductCubit, UserFavoriteProductState>(
          builder: (context, state) {
            return PagingGrid<ProductEntity>(
              pagingController:
                  context.read<UserFavoriteProductCubit>().controller,
              shrinkWrap: false,
              isSliver: true,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: Dimens.pad_XS2,
                crossAxisSpacing: Dimens.pad_XS2,
                childAspectRatio: 164 / 257,
              ),
              fetchListData:
                  context.read<UserFavoriteProductCubit>().onScrollLoad,
              itemBuilder: (context, item, index) => ProductItem(
                item: item,
                args: ProductItemArgs(
                  action: AppButtonIcon(
                    icon: PhosphorIcons.shopping_cart,
                    onPressed: () => ProductSelectVariantPopup(
                      product: item,
                    ).show(context: context),
                  ),
                ),
                layoutType: ProductItemLayoutType.layoutSubcribe,
                onHeartPressed: () => context
                    .read<UserFavoriteProductCubit>()
                    .onUnSubcribeProduct(item),
              ),
              noItemsFoundIndicatorBuilder: (context) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.icons.common.emptyBox.svg(),
                    Gaps.vGap16,
                    'Không tìm thấy sản phẩm nào'.tr().text.make(),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
