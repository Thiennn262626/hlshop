import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/home/presentation/main/cubit/home_cubit.dart';
import 'package:hlshop/app/features/home/presentation/main/home_body.dart';
import 'package:hlshop/app/features/shopping_cart/presentation/widget/shopping_cart_btn.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..fetchItem(),
      child: Builder(
        builder: (context) {
          return BlocListener<HomeCubit, HomeState>(
            listener: _onStateChanged,
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  AppAppBarSliver(
                    title: 'Trang chủ'.tr(),
                    args: AppBarArgs(
                      actions: [
                        const ShoppingCartBtn(),
                        Gaps.hGap4,
                      ].withDivider(Gaps.hGap4, showLast: true),
                    ),
                  ),
                ];
              },
              body: const HomeBody(),
            ),
          );
        },
      ),
    );
  }

  void _onStateChanged(BuildContext context, HomeState state) {
    if (state.status == ItemStatus.error) {
      DialogUtils.showErrorDialog(
        context: context,
        content: context.getAppErrorMsg(state.error),
        error: state.error,
      );
    }
  }
}
