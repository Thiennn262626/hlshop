import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/checkout/domain/repo/app_global_event.dart';
import 'package:hlshop/app/features/checkout/presentation/main/bloc/checkout_bloc.dart';
import 'package:hlshop/app/features/checkout/presentation/main/checkout_body.dart';
import 'package:hlshop/app/features/checkout/presentation/main/widget/checkout_bottom_bar.dart';
import 'package:hlshop/app/features/shopping_cart/seft.dart';

@RoutePage()
class CheckoutPage extends StatelessWidget {
  const CheckoutPage({
    super.key,
    this.cartItems,
    this.selectedCartItemIds,
  });

  final List<ShoppingCartItemGroupEntity>? cartItems;
  final Set<String>? selectedCartItemIds;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckoutBloc(
        cartItemGroups: cartItems,
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
