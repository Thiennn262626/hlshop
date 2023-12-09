import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/shopping_cart/presentation/widget/shopping_cart_btn.dart';
import 'package:hlshop/app/features/user/presentation/favorite_product/cubit/user_favorite_product_cubit.dart';
import 'package:hlshop/app/features/user/presentation/favorite_product/user_favorite_product_body.dart';

@RoutePage()
class UserFavoriteProductPage extends StatelessWidget {
  const UserFavoriteProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserFavoriteProductCubit(),
      child:
          ApiItemConsumer<UserFavoriteProductCubit, UserFavoriteProductState>(
        getStatus: (state) => state.status,
        child: Scaffold(
          appBar: AppAppBar(
              title: 'Sản phẩm yêu thích'.tr(),
              args: AppBarArgs(
                actions: [
                  const ShoppingCartBtn(),
                  Gaps.hGap4,
                ].withDivider(Gaps.hGap4, showLast: true),
              )),
          body: const UserFavoriteProductBody().pyDefault(),
        ),
      ),
    );
  }
}
