import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/presentation/detail/product_detail_page.dart';

final productRoutes = [
  AutoRoute(path: '/product-detail', page: ProductDetailRoute.page),
  AutoRoute(path: '/product-search', page: ProductSearchRoute.page),
];
