import 'package:hlshop/all_file/all_file.dart';

final userRoutes = [
  AutoRoute(
    path: '/user-info',
    page: UserInfoRoute.page,
  ),
  AutoRoute(
    path: '/user-receive-address',
    page: ReceiveAddressRoute.page,
  ),
  AutoRoute(
    path: '/user-add-crud',
    page: CrudAddressRoute.page,
  ),
  AutoRoute(
    path: '/user-detail-account',
    page: ReceiveDetailAccountRoute.page,
  ),
  AutoRoute(
    path: '/user-account-info',
    page: UserAccountInfoRoute.page,
  ),
  AutoRoute(
    path: '/user-phone-info',
    page: UserPhoneInfoRoute.page,
  ),
  AutoRoute(
    path: '/user-email-info',
    page: UserEmailInfoRoute.page,
  ),
  AutoRoute(
    path: '/user-favorite-product',
    page: UserFavoriteProductRoute.page,
  ),
];
