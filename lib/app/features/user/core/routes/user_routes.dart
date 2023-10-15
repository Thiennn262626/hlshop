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
    path: '/user-bank-account-crud',
    page: CrudBankAccountRoute.page,
  ),
  AutoRoute(
    path: '/user-credit-card-crud',
    page: CrudCreditCardRoute.page,
  ),
  AutoRoute(
    path: '/user-payment',
    page: UserPaymentInfoRoute.page,
  ),
  AutoRoute(
    path: '/user-detail-account',
    page: ReceiveDetailAccountRoute.page,
  ),
  AutoRoute(
    path: '/user-account-info',
    page: UserAccountInfoRoute.page,
  ),
];
