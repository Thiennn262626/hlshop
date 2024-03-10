import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Giỏ hàng ({})'.tr(
          args: [
            '${context.watch<ShoppingCartBloc>().getTotalItems()}',
          ],
        ),
        args: const AppBarArgs(
          centerTitle: true,
        ),
      ),
      body: BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
        builder: (context, state) {
          final items = state.itemGroups;
          if (items.isEmpty) {
            return 'Không có sản phẩm nào trong giỏ hàng'
                .tr()
                .text
                .center
                .makeCentered()
                .p16();
          }
          return AppLoading(
            isLoading: state.status.isLoading,
            child: ShoppingCartBody(
              listItem: items,
            ),
          );
        },
      ),
      bottomNavigationBar: const ShoppingCartBottomBar(),
    );
  }
}
