import 'package:hlshop/all_file/all_file.dart';

class ProductDetailAttribute extends StatelessWidget {
  const ProductDetailAttribute({
    super.key,
    this.item,
  });

  final ProductEntity? item;

  @override
  Widget build(BuildContext context) {
    return ShowMoreLayoutTextList(
      moreBtnBuilder: (showMore, onTap) {
        return AppMoreBtn(
          onPressed: onTap,
          isMore: showMore,
        );
      },
      valueList: <String?>[
        'Danh mục'.tr(),
        '${item?.category?.name}',
        'Xuất xứ thương hiệu'.tr(),
        '${item?.madeIn} \n',
        'Thành Phần'.tr(),
        '\n${item?.ingredient?.replaceAll('. ', '.\n')} \n',
        'Mục Đích Sử Dụng'.tr(),
        '\n🎯 ${item?.productUses?.replaceAll('. ', '.\n🎯 ')} \n',
        'Cách Sử Dụng'.tr(),
        '\n👉🏻 ${item?.instructionsForUse?.replaceAll('. ', '.\n👉🏻 ')} \n',
        'Đối Tượng Sử Dụng'.tr(),
        '${item?.objectsOfUse} \n',
        'Bảo Quản'.tr(),
        item?.preserve,
      ],
      maxVisiblePair: 3,
      maxVisibleTotalLine: 6,
      pairMaxLine: 2,
    );
  }
}
