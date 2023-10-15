import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/shopping_cart/presentation/presentation.dart';

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
        builder: (context, state) => AppLoading(
          isLoading: state.status.isLoading,
          child: const ShoppingCartBody(),
        ),
      ),
      bottomNavigationBar: const ShoppingCartBottomBar(),
    );
  }
}
