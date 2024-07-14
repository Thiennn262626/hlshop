import 'package:hlshop/all_file/all_file.dart';

class ProductDetailDescription extends StatelessWidget {
  const ProductDetailDescription({
    super.key,
    this.item,
    required this.onShowMorePressed,
  });

  final ProductEntity? item;
  final VoidCallback onShowMorePressed;

  @override
  Widget build(BuildContext context) {
    return SectionContainer.content(
      title: LocaleKeys.common_Desciption.tr(),
      child: ShowMoreText(
        moreBtnBuilder: (showMore, onTap) {
          return AppMoreBtn(
            onPressed: () {
              onTap();
              if (!showMore) {
                onShowMorePressed();
              }
            },
            isMore: showMore,
          );
        },
        content:
            '${item?.shortDescription?.replaceAll('. ', '\n') ?? ''}\n+ ${item?.description?.replaceAll('. ', '\n') ?? ''} ',
        maxLines: 4,
        textStyle: context.themeText.body.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ).objectCenterLeft(),
    );
  }
}
