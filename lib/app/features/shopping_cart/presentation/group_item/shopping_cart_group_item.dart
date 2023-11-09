import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/shopping_cart/seft.dart';

class ShoppingCartGroupItem extends StatelessWidget {
  const ShoppingCartGroupItem({
    super.key,
    required this.listItem,
  });

  final List<ShoppingCartItemEntity> listItem;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
      builder: (context, state) {
        return ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: listItem.length,
          itemBuilder: (context, index) {
            final cartItem = listItem[index];
            return ShoppingCartItem(
              key: ObjectKey(cartItem),
              cartItem: cartItem,
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 26);
          },
        );
      },
    );
  }
}
