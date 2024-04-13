import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class UserOrderPage extends StatelessWidget {
  const UserOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserOrderCubit()..fetchStatus(),
      child: Builder(
        builder: (context) {
          return ApiItemConsumer<UserOrderCubit, UserOrderState>(
            getStatus: (state) => state.orderCountStatus,
            showLoadingIndicator: false,
            onError: (error) => true,
            child: Scaffold(
              appBar: AppAppBar(
                title: 'Đơn hàng'.tr(),
                args: AppBarArgs(
                  centerTitle: false,
                  elevation: 0,
                  actions: [
                    AuthBuilder(
                      unAuthenticatedWidget: const SizedBox.shrink(),
                      child: AppButtonIcon(
                        icon: PhosphorIcons.magnifying_glass,
                        onPressed: () {
                          context.read<UserOrderCubit>().fetchItemList();
                        },
                      ),
                    ),
                    const ShoppingCartBtn(),
                    Gaps.hGap4,
                  ].withDivider(Gaps.hGap4, showLast: true),
                ),
              ),
              body: AuthConsumer(
                onAuthenticated: () {
                  context.read<UserOrderCubit>().fetchItemList();
                },
                onUnAuthenticated: () {
                  context.read<UserOrderCubit>().clearController();
                },
                child: const UserOrderBody(),
              ),
            ),
          );
        },
      ),
    );
  }
}
