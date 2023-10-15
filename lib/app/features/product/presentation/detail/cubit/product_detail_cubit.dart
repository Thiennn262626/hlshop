import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/domain/entity/category_entity.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';
import 'package:hlshop/app/features/product/domain/repo/product_repo.dart';
import 'package:hlshop/app/features/product/presentation/variant/select_variant/product_select_variant.dart';

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
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }

  Future<List<ProductEntity>> fetchSameDistributor(int offset, int limit) {
    return productRepo.getProductListSearch(
      limit: limit,
      offset: offset,
      filterData: ProductFilterData(
        relatedProductID: state.product?.id,
        sellerID: state.product?.distributor?.id,
      ),
    );
  }

  Future<List<ProductEntity>> fetchSameCategory(int offset, int limit) {
    return productRepo.getProductListSearch(
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
}
