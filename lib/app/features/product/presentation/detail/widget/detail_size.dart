import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/presentation/widgets/container/show_more/more_btn.dart';
import 'package:hlshop/app/features/product/self.dart';

class ProductDetailSize extends StatelessWidget {
  const ProductDetailSize({
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
        'Trọng lượng'.tr(),
        '${item?.weight}g',
        'Chiều cao'.tr(),
        '${item?.height}cm',
        'Chiều rộng'.tr(),
        '${item?.width}cm',
        'Độ dày'.tr(),
        '${item?.length}cm',
      ],
      maxVisiblePair: 4,
      maxVisibleTotalLine: 6,
      pairMaxLine: 2,
    );
  }
}
