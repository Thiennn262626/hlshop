import 'package:hlshop/all_file/all_file.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final productWidthFraction = screenWidth < 600 ? 0.46 : null;
    return AppScrollBody.withSpacing(
      child: Column(
        children: [
          const HomeSearchBar().pxDefault(),
          Gaps.vGap16,
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              return Column(
                children: [
                  const HomeFeatureGird(
                    padding: Dimens.edge_x_XS,
                  ),
                  if (state.userEntity != null)
                    SectionContainer(
                      key: const Key('home_for_you_section'),
                      title: '${'Dành cho bạn'.tr()} 🎁🎁🎁',
                      seeAll: () {
                        context.pushRoute(
                          AllProductsRoute(
                            title: '${'Dành cho bạn'.tr()} 🎁🎁🎁',
                            productListType: ProductListType.foryou,
                          ),
                        );
                      },
                      child: ProductListHoz(
                        parentWidthFraction: productWidthFraction,
                        fetchListData: (offset, limit) =>
                            getIt<ProductRepo>().getProductList(
                          offset: offset,
                          limit: limit,
                          type: ProductListType.foryou,
                          showType: ProductListShowType.homePage,
                        ),
                      ),
                    ),
                  SectionContainer(
                    key: const Key('home_hot_section'),
                    title: '${'Sản phẩm HOT'.tr()} 🔥🔥🔥',
                    seeAll: () {
                      context.pushRoute(
                        AllProductsRoute(
                          title: '${'Sản phẩm HOT'.tr()} 🔥🔥🔥',
                          productListType: ProductListType.hot,
                        ),
                      );
                    },
                    child: ProductListHoz(
                      parentWidthFraction: productWidthFraction,
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
                    key: const Key('home_best_seller_section'),
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
                        AllProductsRoute(
                          title: '${'Sản phẩm bán chạy'.tr()} 🌟🌟🌟',
                          productListType: ProductListType.bestSeller,
                        ),
                      );
                    },
                  ),
                  SectionContainer(
                    key: const Key('home_good_price_section'),
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
                        AllProductsRoute(
                          title: 'Giá tốt hôm nay'.tr(),
                          productListType: ProductListType.goodPrice,
                        ),
                      );
                    },
                  ),
                  SectionContainer(
                    key: const Key('home_newest_section'),
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
                        AllProductsRoute(
                          title: 'Sản phẩm mới'.tr(),
                          productListType: ProductListType.newest,
                        ),
                      );
                    },
                  ),
                ].withDivider(const AppDivider().py16()),
              );
            },
          ),
          Gaps.vGap32,
        ],
      ),
    );
  }
}
