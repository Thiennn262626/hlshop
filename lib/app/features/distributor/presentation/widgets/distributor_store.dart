import 'package:hlshop/all_file/all_file.dart';

class DistributorStore extends StatelessWidget {
  const DistributorStore({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
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
            },
          ),
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
        ].withDivider(Gaps.vGap20, showFirst: true),
      ),
    );
  }
}

class PromotionSimple extends StatelessWidget {
  const PromotionSimple({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 253,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.vGap8,
              SizedBox(
                height: 32,
                width: 118,
                child: 'Mua 10 triệu chiết khấu 10%'
                    .text
                    .colorPrimaryDark(context)
                    .caption(context)
                    .make(),
              ),
              '15/02 - 20/04/2023'.text.colorPrimaryLight(context).make()
            ],
          ),
          Gaps.hGap8,
          AppButton(
            label: 'Tham gia'.tr(),
            onPressed: () {},
          )
        ],
      ),
    ).color(context.themeColor.primaryLighter).cornerRadius(Dimens.rad_S);
  }
}
