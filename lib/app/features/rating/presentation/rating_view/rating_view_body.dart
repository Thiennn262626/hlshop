import 'package:hlshop/all_file/all_file.dart';

class RatingViewBody extends StatelessWidget {
  const RatingViewBody({
    super.key,
    required this.orderId,
  });

  final String orderId;

  @override
  Widget build(BuildContext context) {
    final controller =
        AppPagingController<int, RatingItemEntity>(firstPageKey: 0);
    return PagingList<RatingItemEntity>(
      pagingController: controller,
      noItemsFoundIndicatorBuilder: (context) =>
          'Không có đánh giá'.tr().text.bodyMedium(context).make().centered(),
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
                          .make()
                          .expand() ??
                      const SizedBox.shrink().expand(),
                  if (ratingItemEntity.editable == 0)
                    RatingUpdateButton(
                      ratingItemEntity: ratingItemEntity,
                      onPressed: () async {
                        final rs = await context.pushRoute(
                          UpdateRatingRoute(
                            ratingItemEntity: ratingItemEntity,
                          ),
                        );
                        if (rs == true) {
                          controller.refresh();
                        }
                      },
                    ),
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
              (ratingItemEntity.editableDate ?? ratingItemEntity.createdTime)
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
        ).pSymmetric(v: Dimens.gap_dp8);
      },
      fetchListData: (offset, limit) => getIt<RatingRepo>()
          .getRatingByOrder(orderId: orderId, offset: offset, limit: limit),
    ).pxDefault();
  }
}
