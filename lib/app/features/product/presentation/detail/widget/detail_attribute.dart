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
        '${item?.category?.name ?? ''}',
        'Xuất xứ thương hiệu'.tr(),
        '${item?.madeIn ?? ''} \n',
        if (item?.ingredient != 'productIngredient'.tr()) 'Thành Phần'.tr(),
        if (item?.ingredient != 'productIngredient'.tr())
          '\n${item?.ingredient?.replaceAll('. ', '.\n') ?? ''} \n',
        if (item?.productUses != 'productUses'.tr()) 'Mục Đích Sử Dụng'.tr(),
        if (item?.productUses != 'productUses'.tr())
          '\n🎯 ${item?.productUses?.replaceAll('. ', '.\n🎯 ') ?? ''} \n',
        if (item?.instructionsForUse != 'productInstructionsForUse'.tr())
          'Cách Sử Dụng'.tr(),
        if (item?.instructionsForUse != 'productInstructionsForUse'.tr())
          '\n👉🏻 ${item?.instructionsForUse?.replaceAll('. ', '.\n👉🏻 ') ?? ''} \n',
        if (item?.objectsOfUse != 'productObjectsOfUse'.tr())
          'Đối Tượng Sử Dụng'.tr(),
        if (item?.objectsOfUse != 'productObjectsOfUse'.tr())
          '${item?.objectsOfUse ?? ''} \n',
        if (item?.preserve != 'productPreserve'.tr()) 'Bảo Quản'.tr(),
        if (item?.preserve != 'productPreserve'.tr()) item?.preserve ?? '',
      ],
      maxVisiblePair: 3,
      maxVisibleTotalLine: 6,
      pairMaxLine: 2,
    );
  }
}
