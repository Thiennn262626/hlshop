import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/presentation/widgets/container/show_more/more_btn.dart';
import 'package:hlshop/app/features/product/self.dart';

class ProductDetailNote extends StatelessWidget {
  const ProductDetailNote({super.key, this.item});

  final ProductEntity? item;

  @override
  Widget build(BuildContext context) {
    return SectionContainer.content(
      title: LocaleKeys.common_Note.tr(),
      child: ShowMoreText(
        moreBtnBuilder: (showMore, onTap) {
          return AppMoreBtn(
            onPressed: onTap,
            isMore: showMore,
          );
        },
        content: item?.notes,
        maxLines: 5,
        textStyle: context.themeText.body,
      ).objectCenterLeft(),
    );
  }
}
