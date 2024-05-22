import 'package:hlshop/all_file/all_file.dart';

class ProductSearchBody extends StatelessWidget {
  const ProductSearchBody({super.key, required this.filterData});

  final ProductFilterData filterData;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: OrderByType.values.length,
      child: Column(
        children: [
          Row(
            children: [
              'Xếp theo: '.tr().text.make().pl16(),
              AppButtonTabBar(
                onTap: (index) {
                  context.read<ProductSearchCubit>().onSortChange(
                        ProductFilterData(
                          orderByType: OrderByType.values[index],
                        ),
                      );
                },
                tabs: OrderByType.values.mapAsList(
                  (item) => Tab(text: item.displayValue.tr()),
                ),
              ).expand(),
            ],
          ).pt16(),
          TabBarView(
            children: OrderByType.values.mapAsList(
              (type) => ProductGridVer(
                fetchListData: (offset, limit) =>
                    getIt<ProductRepo>().getProductListSearch(
                  offset: offset,
                  limit: limit,
                  filterData: filterData.copyWith(
                    orderByType: type,
                  ),
                ),
              ),
            ),
          ).expand(),
        ],
      ),
    );
  }
}
