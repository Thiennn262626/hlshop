import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/notification/data/api/notification_api.dart';

class NotificationRepo {
  NotificationRepo({NotificationApi? notificationApi}) {
    _api = notificationApi ?? getIt<NotificationApi>();
  }

  late final NotificationApi _api;

  Future<dynamic?> getNotificationList({
    int? offset,
    int? limit,
  }) async {
    return _api.getNotificationList(
      offset: offset,
      limit: limit,
    );
  }

  Future<dynamic?> getNotificationDetail({
    String? messageID,
  }) async {
    return _api.getNotificationDetail(
      messageID: messageID,
    );
  }

  Future<dynamic?> notificationMarkAsRead({
    String? messageID,
  }) async {
    return null;
  }
}
