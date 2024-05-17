import 'package:hlshop/all_file/all_file.dart';

part 'assess_entity.g.dart';

@CopyWith(copyWithNull: true)
class AssessEntity {
  const AssessEntity({
    this.id = '',
    this.name,
    this.avatar,
    this.comment,
    this.imgList,
    this.date,
    this.feedback,
  });

  static AssessEntity demo() {
    return AssessEntity(
      id: '1',
      name: 'Huynh Nhi',
      avatar:
          'https://product.hstatic.net/200000311493/product/set_goi_xa_gung_trang_68383b0f8acb45c498206705071e6d2c.jpg',
      comment: 'Giá tốt, giao nhanh, đủ hàng',
      date: '12/09/2022',
      imgList: [
        ImageEntity.demo(),
      ],
      feedback: 'Cảm ơn bạn đã tin dùng sản phẩm bên công ty chúng tôi <3',
    );
  }

  final String? id;
  final String? avatar;
  final String? name;
  final String? comment;
  final List<ImageEntity>? imgList;
  final String? date;
  final String? feedback;
}
