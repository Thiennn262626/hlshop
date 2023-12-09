import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';
import 'package:hlshop/app/features/product/domain/repo/product_repo.dart';

part 'user_favorite_product_cubit.freezed.dart';
part 'user_favorite_product_state.dart';

class UserFavoriteProductCubit extends Cubit<UserFavoriteProductState> {
  UserFavoriteProductCubit()
      : super(
          const UserFavoriteProductState(),
        ) {
    controller = AppPagingController<int, ProductEntity>(firstPageKey: 0);
    controller.addPageRequestListener((pageKey) {});
  }
  late final AppPagingController<int, ProductEntity> controller;
  final _repo = getIt<ProductRepo>();

  Future<void> fetchItemList() async {
    controller.refresh();
  }

  Future<void> fetchProduct(int? offset, int? limit) async {
    try {
      final listProduct = await _repo.getListSubcribe(
        offset: offset,
        limit: limit,
      );
      emit(
        state.copyWith(status: const ApiStatus.done(), products: listProduct),
      );
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }

  Future<List<ProductEntity>> onScrollLoad(int offset, int limit) async {
    await fetchProduct(offset, limit);
    return Future.value(state.products);
  }

  Future<void> onUnSubcribeProduct(ProductEntity? product) async {
    await _repo.unsubcribe(productID: product?.id);
    await fetchItemList();
  }
}
