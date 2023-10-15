import 'package:hlshop/all_file/all_file.dart';

part 'distributor_rating_state.dart';

class DistributorRatingCubit extends Cubit<DistributorRatingState> {
  DistributorRatingCubit({dynamic? item})
      : super(DistributorRatingState(item: item));

  FutureOr<void> fetchItem() async {
    emit(state.copyWith(status: ItemStatus.loading));
    try {
      // final item = await Get.find<ApproveRepo>().getProgramForApprove(programID: item.programID ?? '');
      emit(state.copyWith(
        status: ItemStatus.success,
        // item: item,
      ));
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
