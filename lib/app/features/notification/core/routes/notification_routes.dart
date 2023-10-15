import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/home/presentation/main/home_page.dart';
import 'package:hlshop/app/features/notification/presentation/detail/notification_detail_page.dart';
import 'package:hlshop/app/features/notification/presentation/main/notification_main_page.dart';

final notificationRoutes = [
  AutoRoute(path: '/notification-main', page: NotificationMainRoute.page),
  AutoRoute(path: '/notification-detail', page: NotificationDetailRoute.page),
];
