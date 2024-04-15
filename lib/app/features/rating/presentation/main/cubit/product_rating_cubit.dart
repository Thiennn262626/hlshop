import 'package:hlshop/all_file/all_file.dart';

part 'product_rating_state.dart';

part 'product_rating_cubit.freezed.dart';

class ProductRatingCubit extends Cubit<ProductRatingState> {
  ProductRatingCubit() : super(const ProductRatingState());

  final _repo = getIt<RatingRepo>();

  FutureOr<void> fetchItem() async {
    try {
      emit(state.copyWith(status: state.status.toPending()));
      final rs = await _repo.getRatingByProduct(productId: '');
      emit(
        state.copyWith(
          status: const ApiStatus.done(),
          ratingEntity: rs,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: ApiStatus.error(e),
        ),
      );
    }
  }
}
