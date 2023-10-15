import 'package:hlshop/all_file/all_file.dart';

enum DistributorItemLayoutType {
  layout1(size: Size(74, 88)),
  layoutSimpleInfo1(size: Size(-1, -1));

  const DistributorItemLayoutType({required this.size});

  final Size size;
}
