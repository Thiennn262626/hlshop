import 'package:hlshop/app/common/domain/entity/common_entity.dart';

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
      name: 'Distributor 1',
      type: 'Distributor',
    );
  }

  final String? id;
  final String? name;
  final ImageEntity? img;
  final String? type;
  final Object? object;
}
