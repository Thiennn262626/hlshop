import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class RatingViewPage extends StatelessWidget {
  const RatingViewPage({
    super.key,
    required this.orderId,
  });

  final String orderId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Xem đánh giá'.tr(),
      ),
      body: RatingViewBody(
        orderId: orderId,
      ),
    );
  }
}
