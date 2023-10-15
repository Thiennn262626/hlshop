import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';
import 'package:hlshop/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:hlshop/app/features/product/presentation/item/product_item.dart';

class ProductListVer extends StatelessWidget {
  const ProductListVer({
    super.key,
    this.fetchListData,
    this.padding,
    this.layoutType = ProductItemLayoutType.layout1,
    this.shrinkWrap,
  });

  static ProductListVer demo({bool? shrinkWrap}) {
    return ProductListVer(
      shrinkWrap: shrinkWrap,
      fetchListData: (page, pageSize) {
        return Future.value(List.generate(5, (index) => index)
            .map((e) => ProductEntity.demo())
            .toList());
      },
    );
  }

  final PagingListFetchFunc<ProductEntity>? fetchListData;
  final EdgeInsets? padding;
  final ProductItemLayoutType layoutType;
  final bool? shrinkWrap;

  @override
  Widget build(BuildContext context) {
    return PagingList<ProductEntity>(
      shrinkWrap: shrinkWrap ?? false,
      itemBuilder: (context, item, index) => ProductItem(
        item: item,
        layoutType: layoutType,
      ),
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
      separatorBuilder: (context, index) => const SizedBox(width: 8),
      fetchListData: fetchListData,
    );
  }
}
