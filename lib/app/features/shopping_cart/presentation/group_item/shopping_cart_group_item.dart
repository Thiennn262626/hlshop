import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/shopping_cart/seft.dart';

class ShoppingCartGroupItem extends StatelessWidget {
  const ShoppingCartGroupItem({
    super.key,
    required this.item,
  });

  final ShoppingCartItemGroupEntity item;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                Builder(
                  builder: (context) {
                    final isGroupSelected =
                        context.read<ShoppingCartBloc>().isSellerSelected(
                              sellerId: item.distributor.id,
                            );
                    return AppCheckBox(
                      key: ObjectKey(item.distributor),
                      initialValue: isGroupSelected,
                      onChanged: (value) {
                        context.read<ShoppingCartBloc>().add(
                              ShoppingCartEvent.toggleSeller(
                                distributorEntity: item.distributor,
                              ),
                            );
                      },
                    );
                  },
                ),
                '${item.distributor.name}'
                    .text
                    .titleMedium(context)
                    .semiBold
                    .make()
                    .expand(),
                '${item.productCartList.length} sản phẩm'
                    .tr()
                    .text
                    .colorDark(context)
                    .make(),
              ],
            ).pr16(),
            const Divider(
              thickness: 1,
              height: 1,
            ).pxDefault(),
            ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount: item.productCartList.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final cartItem = item.productCartList[index];
                return ShoppingCartItem(
                  key: ObjectKey(cartItem),
                  cartItem: cartItem,
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 26);
              },
            ),
            const Divider(
              thickness: 1,
              height: 1,
            ).pxDefault(),
            AppTile(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              leading: Icon(
                AppIcon.gift,
                color: context.themeColor.green,
              ),
              title: 'Quà'.text.colorDark(context).make(),
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }
}
