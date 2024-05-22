import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/core/utils/image_utils.dart';

part 'update_rating_state.dart';

part 'update_rating_cubit.freezed.dart';

const updateComment = 'updateCommentForm';

class UpdateRatingCubit extends Cubit<UpdateRatingState> {
  UpdateRatingCubit({
    required this.ratingItemEntity,
  }) : super(
          UpdateRatingState(
            productRating: ratingItemEntity.detailRating?.productQuality ?? 0,
            providerServiceRating:
                ratingItemEntity.detailRating?.sellerService ?? 0,
            shipperServiceRating:
                ratingItemEntity.detailRating?.driverService ?? 0,
            deliveryServiceRating:
                ratingItemEntity.detailRating?.deliveryService ?? 0,
            images: ratingItemEntity.images.mapAsList(
              (item) => ImageEntity(
                src: item,
              ),
            ),
          ),
        ) {
    form = FormGroup({
      updateComment: FormControl<String>(
        value: ratingItemEntity.comment ?? '',
      ),
    });
  }

  late final FormGroup form;
  final RatingRepo _repo = getIt();
  final RatingItemEntity ratingItemEntity;

  FutureOr<void> submit() async {
    try {
      emit(
        state.copyWith(
          status: state.status.toPending(),
        ),
      );
      final rating = OrderItemEntity(
        id: ratingItemEntity.id,
        comment: form.getValue<String>(updateComment) ?? '',
        detailRating: DetailRating(
          productQuality: state.productRating.toInt(),
          sellerService: state.providerServiceRating.toInt(),
          driverService: state.shipperServiceRating.toInt(),
          deliveryService: state.deliveryServiceRating.toInt(),
        ),
        images: state.images,
      );
      await _repo.update(orderItemEntity: rating);
      emit(
        state.copyWith(
          status: const ApiStatus.done(),
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

  FutureOr<void> uploadImage({required BuildContext context}) async {
    try {
      emit(
        state.copyWith(
          uploadImageStatus: state.uploadImageStatus.toPending(),
        ),
      );
      final pickedFile = await ImageUtils.getImageFromLibrary(
        ImagePicker(),
        context,
      );
      final newMedias = [...state.images];
      if (pickedFile != null && context.mounted) {
        final media = await _repo.uploadImage(file: File(pickedFile.path));
        newMedias.add(media);
      }
      emit(
        state.copyWith(
          uploadImageStatus: const ApiStatus.done(),
          images: newMedias,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          uploadImageStatus: ApiStatus.error(e),
        ),
      );
    }
  }

  FutureOr<void> deleteImage({required String src}) {
    emit(
      state.copyWith(
        uploadImageStatus: state.uploadImageStatus.toPending(),
      ),
    );
    final newMedias = [...state.images]..removeWhere((media) {
        return media.src == src;
      });
    emit(
      state.copyWith(
        uploadImageStatus: const ApiStatus.done(),
        images: newMedias,
      ),
    );
  }

  FutureOr<void> updateRating(double rating) {
    emit(state.copyWith(productRating: rating));
  }

  FutureOr<void> updateProviderRating(double rating) {
    emit(state.copyWith(providerServiceRating: rating));
  }

  FutureOr<void> updateDeliverRating(double rating) {
    emit(state.copyWith(deliveryServiceRating: rating));
  }

  FutureOr<void> updateShipperRating(double rating) {
    emit(state.copyWith(shipperServiceRating: rating));
  }

  bool get isEnoughMedias => state.images.length == 5;
}
