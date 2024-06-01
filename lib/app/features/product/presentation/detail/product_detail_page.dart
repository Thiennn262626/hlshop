import 'package:app_ui_kit/components/list/refresh_noti/page_refresh_cubit.dart';
import 'package:app_ui_kit/components/refresh/app_pull_down_refresh.dart';
import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductDetailCubit(
            item: product,
          )..loadData(),
        ),
        BlocProvider(
          create: (context) => PageRefreshCubit(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return ApiItemConsumer<ProductDetailCubit, ProductDetailState>(
            getStatus: (state) => state.status,
            child: Scaffold(
              appBar: const AppAppBar(
                title: '',
                args: AppBarArgs(
                  actions: [
                    ShoppingCartBtn(),
                  ],
                ),
              ),
              bottomNavigationBar: const AppBottomBar(
                child: ProductBottomBar(),
              ),
              body: AppPullDownRefresh(
                refresh: () {
                  context.read<ProductDetailCubit>().loadData();
                  context.read<PageRefreshCubit>().refresh();
                },
                child: const ProductDetailBody(),
              ),
            ),
          );
        },
      ),
    );
  }
}
