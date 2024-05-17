import 'package:hlshop/all_file/all_file.dart';


@AutoRouterConfig(
  replaceInRouteName: 'Page|Dialog,Route',
)
class AppAutoRoute extends $AppAutoRoute {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: '/main',
      page: MainRoute.page,
      children: [
        AutoRoute(path: 'home', page: HomeRoute.page),
        AutoRoute(path: 'user-order', page: UserOrderRoute.page),
        AutoRoute(path: 'user-account', page: UserAccountRoute.page),
      ],
    ),
    ...productRoutes,
    ...shoppingCartRoutes,
    ...checkoutRoutes,
    ...productRatingRoutes,
    ...authRoutes,
    ...userOrderRoutes,
    ...userRoutes,
    ...distributeRoutes,
    AutoRoute(
      path: '/otp-confirm',
      page: OtpConfirmRoute.page,
    ),
  ];
}

Route<T> modalSheetBuilder<T>(
  BuildContext context,
  Widget child,
  RouteSettings page,
) {
  return ModalBottomSheetRoute(
    settings: page,
    builder: (context) => child,
    clipBehavior: Clip.hardEdge,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    elevation: 0,
    constraints: BoxConstraints(
      maxHeight: MediaQuery.of(context).size.height * 0.9,
    ),
    isScrollControlled: true,
  );
}
