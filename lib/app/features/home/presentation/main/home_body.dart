import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/home/presentation/feature_gird/home_feature_gird_page.dart';
import 'package:hlshop/app/features/product/presentation/list/product_grid_hoz.dart';
import 'package:hlshop/app/features/product/presentation/list/product_list_hoz.dart';
import 'package:hlshop/app/features/product/self.dart';
import 'package:hlshop/app/features/search/presentation/widget/home_search_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
      child: Column(
        children: [
          const HomeSearchBar().pxDefault(),
          Gaps.vGap16,
          Column(
            children: [
              const HomeFeatureGird(
                padding: Dimens.edge_x_XS,
              ),
              SectionContainer(
                title: '${'Sản phẩm HOT'.tr()} 🔥🔥🔥',
                seeAll: () {
                  context.pushRoute(
                    ProductSearchRoute(
                      filterData: const ProductFilterData(
                        type: ProductListType.hot,
                        showType: ProductListShowType.homePage,
                      ),
                    ),
                  );
                },
                child: ProductListHoz(
                  fetchListData: (offset, limit) =>
                      getIt<ProductRepo>().getProductList(
                    offset: offset,
                    limit: limit,
                    type: ProductListType.hot,
                    showType: ProductListShowType.homePage,
                  ),
                ),
              ),
              SectionContainer(
                  title: '${'Sản phẩm bán chạy'.tr()} 🌟🌟🌟',
                  child: ProductGridHoz(
                    crossAxisCount: 1,
                    fetchListData: (offset, limit) =>
                        getIt<ProductRepo>().getProductList(
                      offset: offset,
                      limit: limit,
                      type: ProductListType.bestSeller,
                      showType: ProductListShowType.homePage,
                    ),
                  ),
                  seeAll: () {
                    context.pushRoute(
                      ProductSearchRoute(
                        filterData: const ProductFilterData(
                          type: ProductListType.bestSeller,
                          showType: ProductListShowType.homePage,
                        ),
                      ),
                    );
                  }),
              SectionContainer(
                  title: 'Giá tốt hôm nay'.tr(),
                  child: ProductGridHoz(
                    fetchListData: (offset, limit) =>
                        getIt<ProductRepo>().getProductList(
                      offset: offset,
                      limit: limit,
                      type: ProductListType.goodPrice,
                      showType: ProductListShowType.homePage,
                    ),
                  ),
                  seeAll: () {
                    context.pushRoute(
                      ProductSearchRoute(
                        filterData: const ProductFilterData(
                          type: ProductListType.goodPrice,
                          showType: ProductListShowType.homePage,
                        ),
                      ),
                    );
                  }),
              SectionContainer(
                  title: 'Sản phẩm mới'.tr(),
                  child: ProductGridHoz(
                    fetchListData: (offset, limit) =>
                        getIt<ProductRepo>().getProductList(
                      offset: offset,
                      limit: limit,
                      type: ProductListType.newest,
                      showType: ProductListShowType.homePage,
                    ),
                  ),
                  seeAll: () {
                    context.pushRoute(
                      ProductSearchRoute(
                        filterData: const ProductFilterData(
                          type: ProductListType.newest,
                          showType: ProductListShowType.homePage,
                        ),
                      ),
                    );
                  }),
            ].withDivider(const AppDivider().py16()),
          ),
          Gaps.vGap32,
        ],
      ),
    );
  }
}
