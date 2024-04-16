import 'package:hlshop/all_file/all_file.dart';

part 'product_rating_state.dart';

part 'product_rating_cubit.freezed.dart';

class ProductRatingCubit extends Cubit<ProductRatingState> {
  ProductRatingCubit({
    required this.productEntity,
  }) : super(const ProductRatingState());

  final _repo = getIt<RatingRepo>();
  final ProductEntity? productEntity;

  final pagingController =
      AppPagingController<int, RatingItemEntity>(firstPageKey: 0);

  Future<List<RatingItemEntity>> fetchItem(int? offset, int? limit) async {
    try {
      emit(state.copyWith(status: state.status.toPending()));
      final rs = await _repo.getRatingByProduct(
        offset: offset,
        limit: limit,
        productId: productEntity?.id ?? '',
        type: state.star,
        filter: state.ratingType.value,
      );
      emit(
        state.copyWith(
          status: const ApiStatus.done(),
          ratingEntity: rs,
        ),
      );
      return rs?.ratingItems ?? [];
    } catch (e) {
      emit(
        state.copyWith(
          status: ApiStatus.error(e),
        ),
      );
    }
    return [];
  }

  FutureOr<void> toggleRatingType(
    RatingFilterType ratingFilterType,
    BuildContext context,
  ) async {
    emit(state.copyWith(ratingType: ratingFilterType));

    if (state.ratingType == RatingFilterType.star) {
      if (context.mounted) {
        final initialValue = state.star ?? 1;
        final star = await context.pushRoute(
          StarPickupRoute(
            count: state.ratingEntity?.ratingSummary?.count ?? [],
            initialValue: state.star != null
                ? initialValue == 0
                    ? null
                    : initialValue - 1
                : null,
          ),
        );

        if (star is RatingStarEnum) {
          emit(state.copyWith(star: star.value));
        } else if (star is int) {
          emit(state.copyWith(star: star));
        }
      }
    }
    pagingController.refresh();
  }
}
