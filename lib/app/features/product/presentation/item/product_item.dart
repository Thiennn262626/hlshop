import 'package:hlshop/all_file/all_file.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.item,
    this.layoutType,
    this.args = const ProductItemArgs(),
    this.createState = false,
    this.onHeartPressed,
    this.itemSize,
  });

  final ProductEntity item;
  final bool createState;
  final ProductItemLayoutType? layoutType;
  final ProductItemArgs args;
  final VoidCallback? onHeartPressed;
  final Size? itemSize;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        switch (layoutType) {
          case ProductItemLayoutType.layout1:
            return ProductItemLayout1(
              itemSize: itemSize,
              product: item,
              args: args,
              onPressed: () => _onItemClick(context),
              onAddToCart: () => _onAddToCart(context),
            );
          case ProductItemLayoutType.layoutSubcribe:
            return ProductItemLayoutSubcribe(
              product: item,
              args: args,
              onAddToCart: () => _onAddToCart(context),
              onPressed: () async => {
                await context.pushRoute(ProductDetailRoute(product: item)),
                context.read<UserFavoriteProductCubit>().fetchItemList(),
              },
              onHeartPressed: onHeartPressed,
            );
          case ProductItemLayoutType.layoutTile1:
            return ProductItemTileLayout1(
              product: item,
              args: args,
              onPressed: () => _onItemClick(context),
              onAddToCart: () => _onAddToCart(context),
            );
          case ProductItemLayoutType.layoutTile2:
            return ProductItemTileLayout2(
              product: item,
              args: args,
              onPressed: () => _onItemClick(context),
              onAddToCart: () => _onAddToCart(context),
            );
          case ProductItemLayoutType.layoutTile3:
            return ProductItemTileLayout3(
              product: item,
              args: args,
              onPressed: () => _onItemClick(context),
              onAddToCart: () => _onAddToCart(context),
            );

          case null:
            break;
        }
        return const SizedBox.shrink();
      },
    );
  }

  void _onItemClick(BuildContext context) {
    context.pushRoute(ProductDetailRoute(product: item));
  }

  void _onAddToCart(BuildContext context) {
    ProductSelectVariantPopup(
      product: item,
    ).show(context: context);
  }
}
