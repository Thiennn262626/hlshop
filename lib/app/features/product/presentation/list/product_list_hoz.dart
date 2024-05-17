import 'package:hlshop/all_file/all_file.dart';

class ProductListHoz extends StatelessWidget {
  const ProductListHoz({
    super.key,
    this.fetchListData,
    this.padding,
    this.layoutType = ProductItemLayoutType.layout1,
    this.itemSize,
    this.parentWidthFraction,
  });

  factory ProductListHoz.demo() {
    return ProductListHoz(
      fetchListData: (page, pageSize) {
        return Future.value(
          List.generate(5, (index) => index)
              .map((e) => ProductEntity.demo())
              .toList(),
        );
      },
    );
  }

  final PagingListFetchFunc<ProductEntity>? fetchListData;
  final EdgeInsets? padding;
  final ProductItemLayoutType layoutType;

  // Custom size
  final Size? itemSize;
  final double? parentWidthFraction;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var targetItemSize = itemSize ?? layoutType.size;
        if (parentWidthFraction != null) {
          final currentWidth = constraints.maxWidth * parentWidthFraction!;
          const fixedContentHeight = 150;
          targetItemSize = Size(
            currentWidth,
            currentWidth + fixedContentHeight,
          );
        }
        return SizedBox(
          height: targetItemSize.height,
          child: PagingList<ProductEntity>(
            itemBuilder: (context, item, index) => ProductItem(
              item: item,
              layoutType: layoutType,
              itemSize: targetItemSize,
            ),
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            scrollDirection: Axis.horizontal,
            fetchListData: fetchListData,
          ),
        );
      },
    );
  }
}
