import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';
import 'package:hlshop/app/features/product/presentation/product_search/cubit/product_search_cubit.dart';
import 'package:hlshop/app/features/product/presentation/product_search/product_search_body.dart';
import 'package:hlshop/app/features/product/presentation/product_search/widget/product_search_drawer.dart';

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
      ),
    );
  }
}
