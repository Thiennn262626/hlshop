import 'package:hlshop/all_file/all_file.dart';

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
        content: '✏️ ${item?.notes?.replaceAll('. ', '.\n✏️ ')}',
        maxLines: 5,
        textStyle: context.themeText.body,
      ).objectCenterLeft(),
    );
  }
}
