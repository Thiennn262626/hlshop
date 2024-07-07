import 'package:hlshop/all_file/all_file.dart';

class ProductDetailBody extends StatelessWidget {
  const ProductDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailCubit, ProductDetailState>(
      builder: (context, state) {
        final item = state.product;
        final imgList = state.product?.imgSrcList ?? [];
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  ProductDetailPhotoView(
                    key: ValueKey(imgList.length),
                    imgList: imgList,
                  ),
                  ...[
                    ProductTitleHeader(
                      product: item,
                    ),
                    if (item != null && (item.variations?.isNotEmpty ?? false))
                      ProductDetailVariantList(
                        product: item,
                        listItem: item.variations ?? [],
                      ).pyDefault(),
                    // if (item?.distributor?.id?.isNotNullOrEmpty ?? false)
                    //   DistributorItem(
                    //     item: item?.distributor,
                    //     layoutType: DistributorItemLayoutType.layoutSimpleInfo1,
                    //     onPressed: () {
                    //       context.router.push(
                    //         const DistributePage() as PageRouteInfo,
                    //       );
                    //     },
                    //   ),
                    ProductRating(
                      productRatingSummary: item?.ratingSummary,
                      onPressed: () {
                        context.router.push(
                          ProductRatingRoute(productEntity: item),
                        );
                      },
                    ),
                    // const ProductHeightLight(),
                    ProductDetailDescription(
                      item: item,
                    ).pDefault(),
                    ProductDetailAttribute(
                      item: item,
                    ).pDefault(),
                    if (item?.notes != "productNotes".tr())
                      ProductDetailNote(
                        item: item,
                      ).pDefault(),
                    ProductDetailSize(
                      item: item,
                    ).pDefault(),
                    if (item?.category?.id?.isNotNullOrEmpty ?? false)
                      SectionContainer(
                        title: 'Sản phẩm tương tự'.tr(),
                        child: ProductGridHoz(
                          fetchListData: context
                              .read<ProductDetailCubit>()
                              .fetchSameCategory,
                        ),
                        seeAll: () {
                          context.pushRoute(
                            AllProductsRoute(
                              fetchListData: context
                                  .read<ProductDetailCubit>()
                                  .fetchSameCategory,
                              title: 'Sản phẩm tương tự'.tr(),
                            ),
                          );
                        },
                      ).pSymmetric(
                        v: Dimens.gap_dp16,
                      ),
                  ].withDivider(const AppDivider()),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
