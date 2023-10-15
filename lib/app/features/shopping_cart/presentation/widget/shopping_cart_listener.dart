import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/shopping_cart/presentation/bloc/shopping_cart_bloc.dart';

class ShoppingCartListener extends StatelessWidget {
  const ShoppingCartListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ApiItemConsumer<ShoppingCartBloc, ShoppingCartState>(
      getStatus: (state) => state.itemStatus,
      onDone: (state) => _showSuccessDialog(context),
      child: child,
    );
  }

  void _showSuccessDialog(BuildContext context) {
    Navigator.pop(context);
    DialogUtils.showSuccessDialog(
      context: context,
      content: 'Đã thêm sản phẩm vào giỏ hàng!'.tr(),
    );
  }
}
