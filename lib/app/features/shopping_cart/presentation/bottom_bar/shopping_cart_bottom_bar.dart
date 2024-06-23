import 'package:hlshop/all_file/all_file.dart';

class ShoppingCartBottomBar extends StatelessWidget {
  const ShoppingCartBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBottomBar(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const _TotalCountSection().minHeight(24),
          const Divider(),
          Gaps.vGap4,
          const _TotalPriceSection(),
        ],
      ),
    );
  }
}

class _TotalCountSection extends StatelessWidget {
  const _TotalCountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Builder(
          builder: (context) => 'Đã chọn ({} sản phẩm)'
              .tr(
                args: [
                  '${context.watch<ShoppingCartBloc>().selectedItemTotal}'
                ],
              )
              .text
              .bodySmall(context)
              .make()
              .expand(),
        ),
        Icon(
          AppIcon.coupon,
          color: context.themeColor.green,
          size: Dimens.ic_XS,
        ),
        '0'.toPrice?.text.bodySmall(context).make(),
      ].withDivider(Gaps.hGap8),
    );
  }
}

class _TotalPriceSection extends StatelessWidget {
  const _TotalPriceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            'Tổng tiền'.tr().text.make(),
            BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
              builder: (context, state) {
                return AppPrice(
                  price: context.watch<ShoppingCartBloc>().getTotalPrice(),
                );
              },
            ),
          ].withDivider(Gaps.vGap4),
        ).expand(),
        BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
          builder: (context, state) {
            return AppButton(
              style: AppButtonTheme.primary(context).big(context),
              onPressed: context
                      .watch<ShoppingCartBloc>()
                      .state
                      .selectedCartItemIds
                      .isEmpty
                  ? null
                  : () {
                      context.pushRoute(
                        CheckoutRoute(
                          cartItems: context
                              .read<ShoppingCartBloc>()
                              .getSelectedItemsList(),
                          selectedCartItemIds: context
                              .read<ShoppingCartBloc>()
                              .state
                              .selectedCartItemIds,
                        ),
                      );
                    },
              child: 'Mua hàng'.tr().text.white.make(),
            ).minWidth(200);
          },
        ),
      ],
    );
  }
}
