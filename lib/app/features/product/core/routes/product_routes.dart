import 'package:hlshop/all_file/all_file.dart';

final productRoutes = [
  AutoRoute(path: '/product-detail', page: ProductDetailRoute.page),
  AutoRoute(path: '/product-search', page: ProductSearchRoute.page),
  AutoRoute(path: '/product-photos', page: ProductPhotosRoute.page),
  AutoRoute(path: '/all-products', page: AllProductsRoute.page),
];
