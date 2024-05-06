import 'package:hlshop/all_file/all_file.dart';

class ProductSearchBody extends StatelessWidget {
  const ProductSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: OrderByType.values.length,
      child: CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          SliverToBoxAdapter(
              child: Row(
              children: [
                'Xếp theo: '.tr().text.make().pl16(),
                AppButtonTabBar(
                  onTap: (index) {
                    context
                        .read<ProductSearchCubit>()
                        .onSortChange(ProductFilterData(
                          orderByType: OrderByType.values[index],
                        ));
                  },
                  tabs: OrderByType.values.mapAsList(
                    (item) => Tab(text: item.displayValue.tr()),
                  ),
                ).expand(),
              ],
            ).pt16(),
          ),
          BlocBuilder<ProductSearchCubit, ProductSearchState>(
            builder: (context, state) {
              return PagingGrid<ProductEntity>(
                pagingController: context.read<ProductSearchCubit>().controller,
                shrinkWrap: false,
                isSliver: true,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: Dimens.pad_XS2,
                  crossAxisSpacing: Dimens.pad_XS2,
                  childAspectRatio: 164 / 311,
                ),
                fetchListData: context.read<ProductSearchCubit>().onScrollLoad,
                itemBuilder: (context, item, index) => ProductItem(
                  item: item,
                  layoutType: ProductItemLayoutType.layout1,
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
      ),
    );
  }
}
