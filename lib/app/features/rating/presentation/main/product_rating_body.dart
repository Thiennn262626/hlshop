import 'package:hlshop/all_file/all_file.dart';

class ProductRatingBody extends StatelessWidget {
  const ProductRatingBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductRatingCubit>();
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: const RatingFilterSection().pOnly(
          top: Dimens.gap_dp16,
          bottom: Dimens.gap_dp8,
          left: Dimens.gap_dp16,
          right: Dimens.gap_dp16,
        )),
        PagingList<RatingItemEntity>(
          pagingController: cubit.pagingController,
          isSliver: true,
          noItemsFoundIndicatorBuilder: (context) => 'Không có đánh giá'
              .tr()
              .text
              .bodyMedium(context)
              .make()
              .centered(),
          itemBuilder: (context, ratingItemEntity, index) {
            return Container(
              padding: Dimens.edge,
              decoration: AppDecor.cardBoxShadow(
                context,
                color: context.themeColor.dividerThick,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AppAvatar(
                        height: Dimens.ic,
                        src: ratingItemEntity.authorPortrait,
                      ),
                      Gaps.hGap8,
                      ratingItemEntity.authorUserName?.text
                              .bodyMedium(context)
                              .make() ??
                          const SizedBox.shrink(),
                    ],
                  ),
                  Row(
                    children: [
                      ...List.generate(
                        ratingItemEntity.ratingStar ?? 0,
                        (index) => const Icon(
                          PhosphorIcons.star_fill,
                          size: Dimens.pad_S,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ],
                  ),
                  if (ratingItemEntity.comment.isNotNullOrEmpty)
                    ratingItemEntity.comment?.text.bodyMedium(context).make(),
                  if (ratingItemEntity.images.isNotNullOrEmpty)
                    LayoutBuilder(
                      builder: (
                        BuildContext context,
                        BoxConstraints constraints,
                      ) {
                        final width = constraints.maxWidth * 0.47;
                        return Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: Dimens.gap_dp8,
                          runSpacing: Dimens.gap_dp8,
                          children: [
                            ...?ratingItemEntity.images?.map(
                              (e) => SizedBox(
                                height: 150,
                                width: width,
                                child: AppImg(
                                  e,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  (ratingItemEntity.editableDate ??
                              ratingItemEntity.createdTime)
                          ?.toSimpleDateLocale()
                          ?.text
                          .bodyMedium(context)
                          .colorHint(context)
                          .size(FontSizeService().text_XS2)
                          .make() ??
                      const SizedBox.shrink(),
                ].withDivider(
                  Gaps.vGap8,
                ),
              ),
            ).pSymmetric(v: Dimens.gap_dp8, h: Dimens.gap_dp16);
          },
          fetchListData: cubit.fetchItem,
        ),
      ],
    );
  }
}

class RatingFilterSection extends StatelessWidget {
  const RatingFilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final width = constraints.maxWidth * 0.23;
        return BlocSelector<ProductRatingCubit, ProductRatingState,
            RatingFilterType>(
          selector: (state) => state.ratingType,
          builder: (context, ratingType) {
            return Row(
              children: RatingFilterType.values
                  .mapAsList(
                    (ratingFilterType) => RatingFilterItem(
                      title: ratingFilterType.titleWidget(context , ratingType == ratingFilterType),
                      amount: ratingFilterType.amount(
                        context
                            .watch<ProductRatingCubit>()
                            .state
                            .ratingEntity
                            ?.ratingSummary,
                      ),
                      width: width,
                      onPressed: () {
                        context.read<ProductRatingCubit>().toggleRatingType(
                              ratingFilterType,
                              context,
                            );
                      },
                      isSelected: ratingType == ratingFilterType,
                    ),
                  )
                  .withDivider(Gaps.hGap8),
            ).fittedBox(
              fit: BoxFit.fill,
            );
          },
        );
      },
    );
  }
}

class RatingFilterItem extends StatelessWidget {
  const RatingFilterItem({
    super.key,
    required this.width,
    required this.title,
    required this.amount,
    required this.isSelected,
    this.onPressed,
  });

  final double width;
  final dynamic title;
  final int amount;
  final bool isSelected;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    Widget? _buildTitleWidget() {
      if (title is String) {
        return title
            .toString()
            .text
            .bodySmall(context)
            .color(isSelected ? context.themeColor.primary : Colors.grey)
            .make();
      } else if (title is Widget) {
        return title as Widget;
      }
      return null;
    }

    return CardCupertinoEffect(
      onPressed: onPressed,
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(vertical: Dimens.gap_dp4),
        decoration: AppDecor.cardBorder(
          context,
          colorBorder:
              isSelected ? context.themeColor.primary : Colors.transparent,
          color: isSelected ? Colors.white : context.themeColor.greyLighter,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTitleWidget() ?? const SizedBox.shrink(),
            '(${amount})'
                .toString()
                .text
                .bodyMedium(context)
                .color(
                  isSelected ? context.themeColor.primary : Colors.grey,
                )
                .make(),
          ],
        ),
      ),
    );
  }
}
