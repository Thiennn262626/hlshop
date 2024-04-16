import 'package:hlshop/all_file/all_file.dart';

class ProductRatingBody extends StatelessWidget {
  const ProductRatingBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductRatingCubit>();
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: const RatingFilterSection().py8().pl8()),
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
              decoration: AppDecor.cardBoxShadow(context),
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
                  ratingItemEntity.comment?.text.bodyMedium(context).make(),
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
                  ratingItemEntity.createdTime
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
            ).p8();
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
        return SizedBox(
          height: 50,
          child: BlocSelector<ProductRatingCubit, ProductRatingState,
              RatingFilterType>(
            selector: (state) => state.ratingType,
            builder: (context, ratingType) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: RatingFilterType.values
                    .mapAsList(
                      (ratingFilterType) => RatingFilterItem(
                        title: ratingFilterType.titleWidget(context),
                        amount: ratingFilterType.amount(context
                            .watch<ProductRatingCubit>()
                            .state
                            .ratingEntity
                            ?.ratingSummary),
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
              );
            },
          ),
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
            .bodyMedium(context)
            .color(isSelected ? Colors.redAccent.withOpacity(0.6) : Colors.grey)
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
        decoration: AppDecor.cardBorder(
          context,
          colorBorder: isSelected
              ? Colors.redAccent.withOpacity(0.6)
              : Colors.transparent,
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
                .color(isSelected
                    ? Colors.redAccent.withOpacity(0.6)
                    : Colors.grey)
                .make(),
          ],
        ),
      ),
    );
  }
}
