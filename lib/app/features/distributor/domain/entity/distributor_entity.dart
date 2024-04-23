import 'package:hlshop/all_file/all_file.dart';

class DistributorEntity {
  const DistributorEntity({
    this.id,
    this.img,
    this.name,
    this.type,
    this.object,
  });

  static DistributorEntity demo() {
    return DistributorEntity(
      id: '1',
      img: ImageEntity.demo(),
      name: 'Nhà cung cấp',
      type: 'Distributor',
    );
  }

  final String? id;
  final String? name;
  final ImageEntity? img;
  final String? type;
  final Object? object;
}
