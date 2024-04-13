import 'package:hlshop/all_file/all_file.dart';

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
