import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';
import 'package:hlshop/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:hlshop/app/features/product/presentation/item/product_item.dart';
import 'package:hlshop/app/features/product/presentation/item/product_item_args.dart';

class CheckoutProductItemLayout1 extends StatelessWidget {
  const CheckoutProductItemLayout1({
    super.key,
    this.productEntity,
    this.quantity,
  });
  final ProductEntity? productEntity;
  final int? quantity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProductItem(
          item: productEntity ?? ProductEntity.demo(),
          layoutType: ProductItemLayoutType.layoutTile3,
          args: ProductItemArgs(
            action: Row(
              children: [
                'x '.text.make(),
                '$quantity'.text.semiBold.size(15).make(),
              ],
            ),
          ),
        ).expand(),
      ],
    );
  }
}
