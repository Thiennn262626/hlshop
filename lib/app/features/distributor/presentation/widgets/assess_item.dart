import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hlshop/all_file/all_file.dart';


class AssessItem extends StatefulWidget {
  const AssessItem({
    super.key,
    this.name,
    this.avatar,
    this.comment,
    this.date,
    this.imgList,
    this.feedback,
  });

  final String? name;
  final String? avatar;
  final String? comment;
  final String? date;
  final List<ImageEntity>? imgList;
  final String? feedback;

  @override
  State<AssessItem> createState() => _AssessItemState();
}

class _AssessItemState extends State<AssessItem> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    final name = widget.name ?? '';
    final comment = widget.comment ?? '';
    final date = widget.date ?? '';
    final feedback = widget.feedback ?? '';
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppAvatar(
          height: 40,
          src: widget.avatar,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            name.text.caption(context).make().py1(),
            RatingBar.builder(
              initialRating: 4,
              itemSize: 20,
              minRating: 1,
              allowHalfRating: true,
              ignoreGestures: true,
              unratedColor: context.theme.hintColor.withOpacity(0.5),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: context.themeColor.yellow,
              ),
              onRatingUpdate: print,
            ).py2(),
            comment.text.black.make().py6(),
            Row(
              children: [
                SizedBox(
                  height: 91,
                  child: const AppImg(
                    'https://product.hstatic.net/200000311493/product/set_goi_xa_gung_trang_68383b0f8acb45c498206705071e6d2c.jpg',
                  ).aspectRatio(1).cornerRadius(Dimens.rad_XS),
                ),
                SizedBox(
                  height: 91,
                  child: const AppImg(
                    'https://product.hstatic.net/200000311493/product/set_goi_xa_gung_trang_68383b0f8acb45c498206705071e6d2c.jpg',
                  ).aspectRatio(1).cornerRadius(Dimens.rad_XS),
                ),
              ].withDivider(Gaps.hGap10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                date.text.make(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: const Row(
                    children: [
                      Text('Xem phản hồi'),
                      AppButtonIcon(
                        icon: PhosphorIcons.caret_up,
                        iconSize: Dimens.ic_S,
                      ),
                    ],
                  ),
                ),
              ].withDivider(Gaps.hGap10),
            ),
            ColoredBox(
              color: context.themeColor.divider,
              child: ExpandedWidget(
                animationDuration: const Duration(milliseconds: 100),
                expand: selected,
                animateFirstRender: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Phản hồi từ nhà cung cấp').pxDefault().pt6(),
                    feedback.text.black.make().pDefault(),
                  ],
                ),
              ),
            )
          ].withDivider(Gaps.vGap2),
        ).expand(),
      ].withDivider(Gaps.hGap8),
    ).pDefault();
  }
}
