import 'package:hlshop/all_file/all_file.dart';

import '../../../self.dart';

part 'message_state.dart';

class MessageCubit extends RequestCubit<MessageState> {
  MessageCubit({
    MessageRepo? repo,
    dynamic? item,
  }) : super(MessageState(item: item)) {
    _repo = repo ?? getIt<MessageRepo>();
  }

  late MessageRepo _repo;

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
