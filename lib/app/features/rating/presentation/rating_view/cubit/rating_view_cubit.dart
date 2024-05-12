import 'package:hlshop/all_file/all_file.dart';

part 'rating_view_state.dart';

part 'rating_view_cubit.freezed.dart';

class RatingViewCubit extends Cubit<RatingViewState> {
  RatingViewCubit() : super(const RatingViewState());

  // late RatingViewRepo _repo = getIt();

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
