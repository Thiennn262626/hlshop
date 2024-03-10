import 'package:hlshop/all_file/all_file.dart';


@RoutePage()
class CheckoutPage extends StatelessWidget {
  const CheckoutPage({
    super.key,
    this.cartItems,
    this.selectedCartItemIds,
  });

  final List<ShoppingCartItemEntity>? cartItems;
  final Set<String>? selectedCartItemIds;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckoutBloc(
        cartItems: cartItems,
        selectedCartItemIds: selectedCartItemIds,
      )..add(
          const CheckoutEvent.initial(),
        ),
      child: Builder(
        builder: (context) {
          return ApiItemConsumer<CheckoutBloc, CheckoutState>(
            getStatus: (state) => state.createOrderStatus,
            onDone: (value) => _onOrderSuccess(context, value),
            child: Scaffold(
              appBar: AppAppBar(
                title: 'Đặt hàng'.tr(),
                args: const AppBarArgs(
                  centerTitle: true,
                ),
              ),
              bottomNavigationBar: const AppBottomBar(
                child: CheckoutBottomBar(),
              ),
              body: const CheckoutBody(),
            ),
          );
        },
      ),
    );
  }

  void _onOrderSuccess(BuildContext context, CheckoutState value) {
    context.read<ShoppingCartBloc>().add(
          const ShoppingCartEvent.refresh(),
        );
    getIt<AppNavigationEventRepo>().setSomeActiveTab(1);
    context.router.popUntilRouteWithName(MainRoute.name);
    DialogUtils.showSuccessDialog(
      context: context,
      content: 'Đặt hàng thành công'.tr(),
    );
  }
}
