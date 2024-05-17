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
      child:  Scaffold(
        appBar: AppAppBar(
          title:filterData?.productCategory?.name?.text.titleMedium(context).make(),
          args: AppBarArgs(
            centerTitle: false,
            floating: true,
            titleSpacing: 0,
            actions: [
              const ShoppingCartBtn(),
              Gaps.hGap4,
            ].withDivider(Gaps.hGap4, showLast: true),
          ),
        ),
        body: ProductSearchBody(),
        endDrawer: NavigatorDrawer(),
      ).pt8(),
    );
  }
}
