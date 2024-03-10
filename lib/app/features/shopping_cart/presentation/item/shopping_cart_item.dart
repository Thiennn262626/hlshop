import 'package:hlshop/all_file/all_file.dart';


class ShoppingCartItem extends StatelessWidget {
  const ShoppingCartItem({
    super.key,
    required this.cartItem,
  });

  final ShoppingCartItemEntity cartItem;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Builder(
            builder: (context) {
              final isSelected =
                  context.read<ShoppingCartBloc>().isCartItemSelected(cartItem);
              return AppCheckBox(
                initialValue: isSelected,
                onChanged: (value) {
                  context.read<ShoppingCartBloc>().add(
                        ShoppingCartEvent.toggleItem(
                          cartItem: cartItem,
                        ),
                      );
                },
              );
            },
          ),
          ProductCartItem(
            cartItem: cartItem,
            onPressed: () {
              context.pushRoute(
                ProductDetailRoute(
                  product: cartItem.product,
                ),
              );
            },
            args: ProductItemArgs(
              action: GestureDetector(
                onTap: () {
                  // leave it here to prevent the parent from being clicked
                },
                child: AppCartItemCounter(
                  counterInitValue: cartItem.quantity,
                  submitCallBack: _counterSubmitCallBack(context),
                ).pr16().objectCenterRight(),
              ),
            ),
          ).expand(),
        ],
      ),
    );
  }

  AppCartItemCounterSubmitCallBack _counterSubmitCallBack(
    BuildContext context,
  ) {
    return AppCartItemCounterSubmitCallBack(
      onValueSubmit: (quantity) {
        context.read<ShoppingCartBloc>().add(
              ShoppingCartEvent.updateItem(
                cartItem: cartItem,
                quantity: quantity,
              ),
            );
      },
      onDeleteItem: () {
        DialogUtils.showMaterialDialog(
          context: context,
          content: 'Xóa mặt hàng này ra khỏi giỏ?',
          deleteLabel: 'Xóa',
          delete: () {
            context.read<ShoppingCartBloc>().add(
                  ShoppingCartEvent.removeItem(
                    cartItem: cartItem,
                  ),
                );
          },
        );
      },
    );
  }
}
