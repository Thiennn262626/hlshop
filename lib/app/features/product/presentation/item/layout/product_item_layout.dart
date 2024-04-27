import 'package:hlshop/all_file/all_file.dart';

enum ProductItemLayoutType {
  layout1(size: Size(150, 297)),
  layoutSubcribe(size: Size(164, 250)),
  layoutTile1(size: Size(280, 120)),
  layoutTile2(size: Size(-1, 102)),
  layoutTile3(size: Size(-1, 70));

  const ProductItemLayoutType({required this.size});

  final Size size;
}
