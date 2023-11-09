import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/checkout/presentation/item/checkout_product_item.dart';
import 'package:hlshop/app/features/checkout/presentation/main/bloc/checkout_bloc.dart';

class CheckoutProductGroupItem extends StatelessWidget {
  const CheckoutProductGroupItem({super.key});

  //final List<ShoppingCartItemEntity>? cartItems;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CheckoutBloc>();
    final cartItems = bloc.state.cartItems;
    return Column(
      children: [
        // Row(
        //   children: [
        //     const Icon(PhosphorIcons.storefront),
        //     'Long chau'.text.titleMedium(context).semiBold.make().expand(),
        //   ].withDivider(Gaps.hGap8),
        // ).pDefault(),
        const Divider(
          thickness: 1,
          height: 1,
        ).pxDefault(),
        ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: cartItems?.length ?? 0,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final cartItem = cartItems?.getOrNull(index);
            return CheckoutProductItem(
              productItem: cartItem?.product,
              quantity: cartItem?.quantity,
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 20);
          },
        ).pxDefault(),
        const Divider(
          thickness: 1,
          height: 1,
        ).pxDefault(),
        AppTile(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          space: 10,
          title: 'Giảm 0%'.text.textS.colorDark(context).make(),
          leading: Icon(
            PhosphorIcons.gift,
            color: context.themeColor.green,
          ),
          trailing: '0'.toPrice?.text.textS.colorDark(context).make(),
        ),
        const Divider(
          thickness: 1,
          height: 1,
        ).pxDefault(),
        Row(
          children: [
            'Tổng tiền ({} sản phẩm):'
                .tr(
                  args: [
                    bloc.getSellerTotalSelectedCartItems()?.toString() ?? '0',
                  ],
                )
                .text
                .textS
                .colorDark(context)
                .make()
                .expand(),
            AppPrice(
              price: bloc.getSellerTotalPrice(),
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: context.textS,
              ),
            ),
          ],
        ).pDefault()
      ],
    );
  }
}
