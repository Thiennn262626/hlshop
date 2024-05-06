import 'package:hlshop/all_file/all_file.dart';

class HomeFeatureGirdBody extends StatelessWidget {
  const HomeFeatureGirdBody({
    super.key,
    this.padding,
    this.rowCount = 1,
  });

  final EdgeInsetsGeometry? padding;
  final int rowCount;

  @override
  Widget build(BuildContext context) {
    const itemHeight = 92.0;
    const itemSpace = 24.0;
    final totalHeight = rowCount * itemHeight + (rowCount - 1) * itemSpace;
    return SizedBox(
      height: totalHeight,
      child: PagingGrid<ProductCategoryEntity?>(
        padding: padding,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, item, index) => HomeFeatureItem(item: item),
        fetchListData: context.read<HomeFeatureGirdCubit>().fetchList,
        firstPageProgressIndicatorBuilder: (context) =>
            const _HomeGirdLoading(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: rowCount,
          childAspectRatio: 1.23,
          mainAxisSpacing: 11,
          crossAxisSpacing: itemSpace,
        ),
      ),
    );
  }
}

class HomeFeatureItem extends StatelessWidget {
  const HomeFeatureItem({
    super.key,
    this.item,
  });

  final ProductCategoryEntity? item;

  @override
  Widget build(BuildContext context) {
    const maxLines = 2;
    return CardCupertinoEffect(
      onPressed: () {
        context.router.push(
          ProductSearchRoute(
            filterData: ProductFilterData(
              productCategory: ProductCategoryEntity(
                id: item?.id,
                name: item?.name,
              ),
            ),
            searchHint: item?.name,
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppImg(
            item?.img,
          ).aspectRatio(1).cornerRadius(Dimens.rad_XS).objectCenter().expand(),
          SizedBox(
            height: context.textS * 1.3 * maxLines,
            child: _breakLineAfterTwoWord(item?.name)
                ?.text
                .textS
                .gray500
                .center
                .medium
                .maxLines(maxLines)
                .make(),
          ),
        ].withDivider(Gaps.vGap8),
      ),
    );
  }

  String _breakLineAfterTwoWord(String? content) {
    if (content == null) {
      return '';
    }
    final words = content.split(' ');
    var result = '';
    for (var i = 0; i < words.length; i++) {
      if (i == 2) {
        result += '\n';
      }
      result += words[i] + ' ';
    }
    return result;
  }
}

class _HomeGirdLoading extends StatelessWidget {
  const _HomeGirdLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
