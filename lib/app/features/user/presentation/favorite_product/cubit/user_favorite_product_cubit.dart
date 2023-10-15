import 'package:hlshop/all_file/all_file.dart';

part 'user_favorite_product_cubit.freezed.dart';
part 'user_favorite_product_state.dart';

class UserFavoriteProductCubit extends Cubit<UserFavoriteProductState> {
  UserFavoriteProductCubit({
    dynamic? item,
  }) : super(UserFavoriteProductState(item: item));

  // late UserFavoriteProductRepo _repo = getIt();

  Future<void> loadData() async {
    emit(state.copyWith(status: state.status.toPending()));

    try {
      // final productEntity = await productRepo.getProductDetail(
      //   id: state.product?.id,
      // );
      emit(
        state.copyWith(
          status: const ApiStatus.done(),
          // product: productEntity,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }
}
