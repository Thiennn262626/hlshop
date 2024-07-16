import 'package:hlshop/all_file/all_file.dart';

part 'product_detail_cubit.freezed.dart';
part 'product_detail_state.dart';

class ProductDetailCubit extends Cubit<ProductDetailState> {
  ProductDetailCubit({
    ProductEntity? item,
  }) : super(ProductDetailState(product: item));

  final ProductRepo productRepo = getIt();

  Future<void> loadData() async {
    emit(state.copyWith(status: state.status.toPending()));
    try {
      final productEntity = await productRepo.getProductDetail(
        id: state.product?.id,
      );
      emit(
        state.copyWith(
          status: const ApiStatus.done(),
          product: productEntity,
        ),
      );
      if (getIt<AuthBloc>().isLogin) {
        getIt<UserBloc>().add(const UserEvent.care());
        final subcriber = await productRepo.checkSubcribeByProductID(
          productID: state.product?.id,
        );

        emit(
          state.copyWith(
            isSubscribed: subcriber?.isSubscribed ?? false,
          ),
        );
      }
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }

  //
  // Future<List<ProductEntity>> fetchSameDistributor(int offset, int limit) {
  //   return productRepo.getProductListSearch(
  //     limit: limit,
  //     offset: offset,
  //     filterData: ProductFilterData(
  //       relatedProductID: state.product?.id,
  //       sellerID: state.product?.distributor?.id,
  //     ),
  //   );
  // }
  Future<void> onUnSubcribeProduct() async {
    try {
      await productRepo.unsubcribe(productID: state.product?.id);
      emit(state.copyWith(isSubscribed: false));
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }

  Future<void> onSubcribeProduct() async {
    try {
      await productRepo.subcribe(productID: state.product?.id);
      emit(state.copyWith(isSubscribed: true));
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }

  Future<List<ProductEntity>> fetchSameCategory(int offset, int limit) {
    return productRepo.getProductListSameCategory(
      limit: limit,
      offset: offset,
      filterData: ProductFilterData(
        relatedProductID: state.product?.id,
        productCategory: ProductCategoryEntity(id: state.product?.category?.id),
      ),
    );
  }

  void selectProduct({required BuildContext context}) {
    final product = state.product;
    if (product == null) return;

    ProductSelectVariantPopup(
      product: product,
    ).show(context: context);
  }

  Future<void> productAttention() async {
    if (getIt<AuthBloc>().isLogin) {
      getIt<UserBloc>().add(const UserEvent.care());
      await productRepo.attention(
        id: state.product?.id,
      );
    }
  }
}
