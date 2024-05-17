
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hlshop/all_file/all_file.dart';


class AssessBody extends StatelessWidget {
  const AssessBody({super.key});

  @override
  Widget build(BuildContext context) {
    const thanh = 'Đánh giá';
    return AppScrollBody(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppTile(
            padding: Dimens.edge,
            trailing: const Text('20 đánh giá'),
            subtitle: Row(
              children: [
                thanh.text.headline5(context).make(),
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
                ),
                '4.2/5'.text.colorDark(context).make(),
              ].withDivider(Gaps.hGap8),
            ).pt2(),
          ),
          PagingList<AssessEntity>(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) =>
                const AppDivider.thin().pxDefault().py10(),
            itemBuilder: (context, item, index) => AssessItem(
              avatar: item.avatar,
              name: item.name,
              comment: item.comment,
              date: item.date,
              imgList: item.imgList,
              feedback: item.feedback,
            ),
            fetchListData: context.read<AssessCubit>().fetchListAssess,
          ),
        ].withDivider(const AppDivider.thin().pxDefault()),
      ),
    );
  }
}
