import 'package:hlshop/all_file/all_file.dart';

class ShoppingCartBtn extends StatelessWidget {
  const ShoppingCartBtn({super.key, this.iconColor, this.padding});

  final Color? iconColor;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
          builder: (context, state) {
            final isLogin = context.read<AuthBloc>().isLogin;
            if (!isLogin) {
              return _buildBtn(context, 0);
            }
            final quantity = context.read<ShoppingCartBloc>().totalQuantity;

            return _buildBtn(context, quantity);
          },
        );
      },
    );
  }

  BadgedCount _buildBtn(BuildContext context, int quantity) {
    return BadgedCount(
      icon: Icon(
        PhosphorIcons.shopping_cart,
        color: iconColor ?? context.theme.iconTheme.color,
      ),
      count: quantity,
      onPressed: () {
        context.read<UserBloc>().checkLoginAction(
          context,
          onLogin: (user) {
            context.pushRoute(const ShoppingCartRoute());
          },
        );
      },
    );
  }
}
