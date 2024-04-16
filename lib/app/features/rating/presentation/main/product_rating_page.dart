import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class ProductRatingPage extends StatelessWidget {
  const ProductRatingPage({
    super.key,
    required this.productEntity,
  });

  final ProductEntity? productEntity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductRatingCubit(productEntity: productEntity),
      child: Builder(
        builder: (context) {
          return ApiStatusListener<ProductRatingCubit, ProductRatingState>(
            getStatus: (ProductRatingState state) => state.status,
            child: Scaffold(
              appBar: AppAppBar(
                title: 'Đánh giá'.tr(),
                args: AppBarArgs(
                  actions: [
                    const ShoppingCartBtn(),
                    Gaps.hGap4,
                  ].withDivider(Gaps.hGap4, showLast: true),
                ),
              ),
              body: const ProductRatingBody(),
            ),
          );
        },
      ),
    );
  }
}
