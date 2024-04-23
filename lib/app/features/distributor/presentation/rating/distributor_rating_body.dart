import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hlshop/all_file/all_file.dart';


class DistributorRatingSimpleLayout1 extends StatelessWidget {
  const DistributorRatingSimpleLayout1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DistributorRatingCubit, DistributorRatingState>(
      builder: (context, state) {
        final item = state.item;
        return Column(
          children: [
            AppTile(
              title: LocaleKeys.distributor_Rating.tr().text.titleMedium(context).bold.make(),
              padding: Dimens.edge,
              subtitle: Row(
                children: [
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
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  '4.0/3,1k'.text.colorDark(context).make(),
                ].withDivider(Gaps.hGap8),
              ).pt2(),
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }
}
