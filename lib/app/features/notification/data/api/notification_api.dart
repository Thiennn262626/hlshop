import 'package:hlshop/all_file/all_file.dart';

part 'notification_api.g.dart';

@RestApi()
abstract class NotificationApi {
  factory NotificationApi(Dio dio) = _NotificationApi;

  @GET('/notice-scheduler/get-list')
  Future<dynamic?> getNotificationList({
    @Query('offset') int? offset,
    @Query('limit') int? limit,
  });

  @GET('/notice-scheduler/get-detail')
  Future<dynamic?> getNotificationDetail({
    @Query('messageID') String? messageID,
  });

  @POST('/notice-scheduler/mark-as-read')
  Future<dynamic?> notificationMarkAsRead({
    @Body() Object? body,
  });
}
