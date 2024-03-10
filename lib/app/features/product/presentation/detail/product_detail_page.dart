import 'package:hlshop/all_file/all_file.dart';


@RoutePage()
class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.product});

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailCubit(
        item: product,
      )..loadData(),
      child: Builder(
        builder: (context) {
          return ApiItemConsumer<ProductDetailCubit, ProductDetailState>(
            getStatus: (state) => state.status,
            child: const Scaffold(
              appBar: AppAppBar(
                title: '',
                args: AppBarArgs(
                  actions: [
                    ShoppingCartBtn(),
                  ],
                ),
              ),
              bottomNavigationBar: AppBottomBar(
                child: ProductBottomBar(),
              ),
              body: ProductDetailBody(),
            ),
          );
        },
      ),
    );
  }
}
