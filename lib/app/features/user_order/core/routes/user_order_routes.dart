import 'package:hlshop/all_file/all_file.dart';

final userOrderRoutes = [
  AutoRoute(path: '/user-order-detail', page: UserOrderDetailRoute.page),
  AutoRoute(
    path: '/user-order-tracking-detail',
    page: UserOrderTrackingDetailRoute.page,
  ),
];
