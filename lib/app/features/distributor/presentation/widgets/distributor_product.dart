import 'package:hlshop/all_file/all_file.dart';

class DistributorProduct extends StatelessWidget {
  const DistributorProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: OrderByType.values.length,
      child: CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          AppAppBarSliver(
            args: AppBarArgs(
              leading: const SizedBox.shrink(),
              floating: true,
              flexibleSpace: Row(
                children: [
                  'Xếp theo: '.tr().text.make().pl16(),
                  AppButtonTabBar(
                    tabs: OrderByType.values.mapAsList(
                      (item) => Tab(text: item.displayValue.tr()),
                    ),
                  ).expand(),
                ],
              ).py6(),
              titleSpacing: 0,
            ),
          ),
          BlocProvider<ProductSearchCubit>(
            create: (context) => ProductSearchCubit(
              filterData: const ProductFilterData(
                productCategory: ProductCategoryEntity(id: '1'),
              ),
            ),
            child: BlocBuilder<ProductSearchCubit, ProductSearchState>(
              builder: (context, state) {
                return ProductGridVer(
                  isSliver: true,
                  fetchListData:
                      context.read<ProductSearchCubit>().fetchProduct,
                );
              },
            ),
          ).expand()
        ],
      ).flexible(),
    );
  }
}
