import 'package:hlshop/all_file/all_file.dart';

part 'directory_entity.g.dart';

@CopyWith(copyWithNull: true)
class DirectoryEntity {
  const DirectoryEntity({
    this.id = '',
    this.name,
    this.amount,
    this.img,
  });

  static DirectoryEntity demo() {
    return DirectoryEntity(
      id: '1',
      name: 'Thực phẩm chức năng',
      amount: '1203',
      // img: Assets.icons.app.logoMedicine.path,
    );
  }

  final String? id;
  final String? name;
  final String? amount;
  final String? img;
}
