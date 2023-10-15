import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';
import 'package:hlshop/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:hlshop/app/features/product/presentation/item/product_item.dart';

class ProductListHoz extends StatelessWidget {
  const ProductListHoz({
    super.key,
    this.fetchListData,
    this.padding,
    this.layoutType = ProductItemLayoutType.layout1,
  });

  static ProductListHoz demo() {
    return ProductListHoz(
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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: layoutType.size.height,
      child: PagingList<ProductEntity>(
        itemBuilder: (context, item, index) => ProductItem(
          item: item,
          layoutType: layoutType,
        ),
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        scrollDirection: Axis.horizontal,
        fetchListData: fetchListData,
      ),
    );
  }
}
