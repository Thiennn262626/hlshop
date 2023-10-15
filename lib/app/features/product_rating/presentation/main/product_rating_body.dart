import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hlshop/all_file/all_file.dart';

class ProductRatingBody extends StatelessWidget {
  const ProductRatingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              '4.2'.text.titleLarge(context).make(),
              RatingBar.builder(
                initialRating: 4,
                itemSize: 20,
                minRating: 1,
                allowHalfRating: true,
                ignoreGestures: true,
                unratedColor: context.themeColor.greyLighter,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: context.themeColor.yellow,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
