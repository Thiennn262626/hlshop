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
      child: const Scaffold(
        body: ProductSearchBody(),
        endDrawer: NavigatorDrawer(),
      ).pt8(),
    );
  }
}
