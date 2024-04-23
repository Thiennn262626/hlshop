import 'package:hlshop/all_file/all_file.dart';

enum DistributorStatus {
  story,
  product,
  category,
  evaluate;

  String get displayValue {
    switch (this) {
      case DistributorStatus.story:
        return 'Cửa hàng'.tr();
      case DistributorStatus.product:
        return 'Sản phẩm'.tr();
      case DistributorStatus.category:
        return 'Danh mục'.tr();
      case DistributorStatus.evaluate:
        return 'Đánh giá'.tr();
    }
  }

  static final List<DistributorPromotionEntity> demoValue = [
    DistributorPromotionEntity(
      'Mua 10 triệu chiết khấu 10%',
      '15/02 - 20/04/2023',
    ),
    DistributorPromotionEntity('Mua 10 tặng 1', '15/02 - 20/04/2023'),
  ];
}
