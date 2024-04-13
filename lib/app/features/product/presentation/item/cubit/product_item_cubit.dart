import 'package:hlshop/all_file/all_file.dart';

part 'product_item_state.dart';

class ProductItemCubit extends Cubit<ProductItemState> {
  ProductItemCubit({
    required ProductEntity item,
  }) : super(ProductItemState(item: item));

  FutureOr<void> fetchItem() async {
    emit(state.copyWith(status: ItemStatus.loading));
    try {
      final item = await getIt<ProductRepo>().getProductDetail(
        id: state.item.id,
      );
      emit(
        state.copyWith(
          status: ItemStatus.success,
          item: item,
        ),
      );
    } catch (e) {
      log(e.toString(), error: e);
      emit(
        state.copyWith(
          status: ItemStatus.error,
          error: e,
        ),
      );
    }
  }
}
