import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class ProductSearchPage extends StatelessWidget {
  const ProductSearchPage({
    super.key,
    this.filterData,
    this.searchHint,
  });

  final ProductFilterData? filterData;
  final String? searchHint;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductSearchCubit(
        filterData: filterData,
        searchHint: searchHint,
      ),
      child: Scaffold(
        appBar: AppAppBar(
          title: const ProductSearchBar(),
          args: AppBarArgs(
            actions: [
              const ShoppingCartBtn(),
              Gaps.hGap4,
            ].withDivider(Gaps.hGap4, showLast: true),
          ),
        ),
        body: ProductSearchBody(
          filterData: filterData ?? const ProductFilterData(),
        ),
        // endDrawer: const NavigatorDrawer(),
      ).pt8(),
    );
  }
}
