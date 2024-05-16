import 'package:hlshop/all_file/all_file.dart';

final productRatingRoutes = [
  AutoRoute(path: '/product-rating', page: ProductRatingRoute.page),
  AutoRoute(
    path: '/rating',
    page: RatingRoute.page,
  ),
  AutoRoute(
    path: '/update-rating',
    page: UpdateRatingRoute.page,
  ),
  AutoRoute(
    path: '/rating-view',
    page: RatingViewRoute.page,
  ),
  AutoRoute(
    path: '/user-rating-view',
    page: UserRatingViewRoute.page,
  ),
  CustomRoute(
    path: '/star-pickup',
    page: StarPickupRoute.page,
    customRouteBuilder: modalSheetBuilder,
  ),
];
