import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';
import 'package:hlshop/app/features/product/presentation/detail/cubit/product_detail_cubit.dart';
import 'package:hlshop/app/features/product/presentation/detail/product_detail_body.dart';
import 'package:hlshop/app/features/product/presentation/detail/widget/product_bottom_bar.dart';
import 'package:hlshop/app/features/shopping_cart/seft.dart';

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
