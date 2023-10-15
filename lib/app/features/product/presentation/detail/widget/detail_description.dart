import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/presentation/widgets/container/show_more/more_btn.dart';
import 'package:hlshop/app/features/product/self.dart';

class ProductDetailDescription extends StatelessWidget {
  const ProductDetailDescription({super.key, this.item});

  final ProductEntity? item;

  @override
  Widget build(BuildContext context) {
    return SectionContainer.content(
      title: LocaleKeys.common_Desciption.tr(),
      child: ShowMoreText(
        moreBtnBuilder: (showMore, onTap) {
          return AppMoreBtn(
            onPressed: onTap,
            isMore: showMore,
          );
        },
        content: item?.description,
        maxLines: 5,
        textStyle: context.themeText.body.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ).objectCenterLeft(),
    );
  }
}
