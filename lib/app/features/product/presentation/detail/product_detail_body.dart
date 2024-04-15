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
                    if (item?.distributor?.id?.isNotNullOrEmpty ?? false)
                      DistributorItem(
                        item: item?.distributor,
                        layoutType: DistributorItemLayoutType.layoutSimpleInfo1,
                      ),
                    ProductRating(
                      productRatingSummary: item?.ratingSummary,
                      onPressed: () {
                        context.router.push(
                           ProductRatingRoute(productEntity: item),
                        );
                      },
                    ),
                    const ProductHeightLight(),
                    ProductDetailDescription(
                      item: item,
                    ).pDefault(),
                    ProductDetailAttribute(
                      item: item,
                    ).pDefault(),
                    ProductDetailNote(
                      item: item,
                    ).pDefault(),
                    ProductDetailSize(
                      item: item,
                    ).pDefault(),
                    if (item?.category?.id?.isNotNullOrEmpty ?? false)
                      SectionTitle(
                        title: 'Sản phẩm tương tự'.tr(),
                        padding: Dimens.edge,
                      ),
                  ].withDivider(const AppDivider()),
                ],
              ),
            ),
            if (item?.category?.id?.isNotNullOrEmpty ?? false)
              ProductGridVer(
                isSliver: true,
                fetchListData:
                    context.read<ProductDetailCubit>().fetchSameCategory,
              )
          ],
        );
      },
    );
  }
}
