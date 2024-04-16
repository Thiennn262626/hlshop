import 'package:hlshop/all_file/all_file.dart';

final productRatingRoutes = [
  AutoRoute(path: '/product-rating', page: ProductRatingRoute.page),
  CustomRoute(
    path: '/star-pickup',
    page: StarPickupRoute.page,
    customRouteBuilder: modalSheetBuilder,
  ),
];
