import 'package:flutter_keyboard_size/flutter_keyboard_size.dart';
import 'package:hlshop/all_file/all_file.dart';

class ProductSelectVariantPopup extends StatelessWidget {
  const ProductSelectVariantPopup({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return KeyboardSizeProvider(
      child: Consumer<ScreenHeight>(
        builder: (context, _res, child) => BlocProvider(
          create: (context) => ProductSelectVariantCubit(
            product: product,
          )..loadData(),
          child: BlocListener<ProductSelectVariantCubit,
              ProductSelectVariantState>(
            listener: (context, state) {
              if (state.status == ItemStatus.success) {
                context.read<ProductSelectVariantCubit>().checkAndSetVariant();
              }
            },
            child: SingleChildScrollView(
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ProductSelectVariantBody(),
                      const AppDivider.thin(),
                      BlocBuilder<ProductSelectVariantCubit,
                          ProductSelectVariantState>(
                        builder: (context, state) {
                          final selectVariant = context
                              .read<ProductSelectVariantCubit>()
                              .state
                              .selectedVariant;
                          return AppButton(
                            label: 'Chọn mua'.tr(),
                            onPressed: selectVariant == null
                                ? null
                                : () {
                                    context.read<UserBloc>().checkLoginAction(
                                      context,
                                      onLogin: (user) {
                                        addToCart(context, selectVariant);
                                      },
                                    );
                                  },
                          ).pDefault();
                        },
                      ),
                      SizedBox(
                        height: _res.keyboardHeight,
                      ),
                    ],
                  ),
                  // AppButtonIcon(
                  //   padding: Dimens.edge,
                  //   icon: Icons.close_rounded,
                  //   onPressed: () {
                  //     context.popRoute();
                  //   },
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void addToCart(BuildContext context, ProductVariantEntity selectVariant) {
    final result = context.read<ShoppingCartBloc>().add(
          ShoppingCartEvent.addItem(
            item: product,
            selectedVariant: selectVariant,
            quantity: context.read<ProductSelectVariantCubit>().state.quantity,
          ),
        );
  }
}

extension ProductSelectVariantPopupExt on ProductSelectVariantPopup {
  FutureOr<void> show({
    required BuildContext context,
  }) {
    return BottomSheetUtils.showMaterial(
      context: context,
      child: this,
    );
  }
}
