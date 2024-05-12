import 'package:hlshop/all_file/all_file.dart';

part 'update_rating_state.dart';

part 'update_rating_cubit.freezed.dart';

class UpdateRatingCubit extends Cubit<UpdateRatingState> {
  UpdateRatingCubit() : super(const UpdateRatingState());

  // late UpdateRatingRepo _repo = getIt();

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
