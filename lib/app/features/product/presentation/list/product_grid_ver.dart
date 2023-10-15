import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';
import 'package:hlshop/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:hlshop/app/features/product/presentation/item/product_item.dart';

class ProductGridVer extends StatelessWidget {
  const ProductGridVer({
    super.key,
    required this.fetchListData,
    this.padding,
    this.layoutType = ProductItemLayoutType.layout1,
    this.spacing = Dimens.pad_XS2,
    this.shrinkWrap,
    this.physics,
    this.isSliver,
  });

  static ProductGridVer demo(
      {bool? shrinkWrap, ScrollPhysics? physics, bool? isSliver}) {
    return ProductGridVer(
      shrinkWrap: shrinkWrap,
      physics: physics,
      isSliver: isSliver,
      fetchListData: (page, pageSize) {
        return Future.value(List.generate(15, (index) => index)
            .map((e) => ProductEntity.demo())
            .toList());
      },
    );
  }

  final PagingListFetchFunc<ProductEntity> fetchListData;
  final EdgeInsets? padding;
  final ProductItemLayoutType layoutType;
  final double spacing;

  final bool? isSliver;
  final bool? shrinkWrap;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    var aspectRatio = 1.0;
    const crossAxisCount = 2;
    aspectRatio = layoutType.size.width / layoutType.size.height;

    return PagingGrid<ProductEntity>(
      shrinkWrap: shrinkWrap ?? false,
      physics: physics,
      isSliver: isSliver ?? false,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: spacing,
        crossAxisSpacing: spacing,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, item, index) => ProductItem(
        item: item,
        layoutType: layoutType,
      ),
      fetchListData: fetchListData,
    );
  }
}
