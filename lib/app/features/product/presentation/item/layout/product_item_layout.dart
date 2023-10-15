import 'package:hlshop/all_file/all_file.dart';

enum ProductItemLayoutType {
  layout1(size: Size(164, 311)),
  layoutTile1(size: Size(310, 120)),
  layoutTile2(size: Size(-1, 102)),
  layoutTile3(size: Size(-1, 70));

  const ProductItemLayoutType({required this.size});

  final Size size;
}
