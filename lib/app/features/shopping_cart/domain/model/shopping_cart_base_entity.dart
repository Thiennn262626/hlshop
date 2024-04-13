import 'package:hlshop/all_file/all_file.dart';


part 'shopping_cart_base_entity.g.dart';

@CopyWith()
class ShoppingCartItemEntity {
  ShoppingCartItemEntity({
    required this.id,
    required this.product,
    required this.quantity,
    this.variant,
    this.object,
    required this.price,
    required this.priceBefore,
  });

  final String? id;
  final ProductEntity product;
  final int quantity;
  final PriceUnit price;
  final PriceUnit priceBefore;
  final ProductVariantEntity? variant;
  final Object? object;

  static ShoppingCartItemEntity demo() {
    return ShoppingCartItemEntity(
      id: 'id',
      product: ProductEntity(),
      quantity: 1,
      price: PriceUnit(),
      priceBefore: PriceUnit(),
      variant: ProductVariantEntity(),
    );
  }
}
