import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/notification/data/model/notification_model.dart';

part 'notification_main_state.dart';

class NotificationMainCubit extends Cubit<NotificationMainState> {
  NotificationMainCubit() : super(const NotificationMainState()) {
    // SocketIOService.instance.listenChange('message', _socketReceive);
  }

  Future<void> _socketReceive(notifyData) async {
    // final notify = SocketIOService.getNotificationValue<NotificationMarkAsReadResp>(
    //   notifyData: notifyData,
    //   notificationType: NotificationType.MARK_AS_READ_NOTIFICATION,
    //   formJson: NotificationMarkAsReadResp.fromJson,
    // );
    // if (notify != null) {
    //   try {
    //     var rs = await getIt<NotificationRepo>().getNotificationDetail(
    //       messageID: notify.data?.messageID,
    //     );
    //     emit(
    //       state.copyWith(
    //         updateItem: rs?.copyWith(
    //           hasRead: true,
    //         ),
    //       ),
    //     );
    //     return;
    //   } catch (e) {
    //     log(e.toString(), error: e);
    //   }
    // }
    //
    // final notifyNoti = SocketIOService.getNotificationValue<NotificationMarkAsReadResp>(
    //   notifyData: notifyData,
    // );
    // if ([NotificationType.NOTIFICATION_NOTI, NotificationType.NOTIFICATION_TLM].contains(notifyNoti?.notificationModel.type)) {
    //   emit(
    //     state.copyWith(
    //       hasNew: !(state.hasNew ?? false),
    //     ),
    //   );
    // }
  }

  @override
  Future<void> close() {
    // SocketIOService.instance.removeListenChange('message', _socketReceive);
    return super.close();
  }
}
