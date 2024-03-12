import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class UserOrderTrackingDetailPage extends StatelessWidget {
  const UserOrderTrackingDetailPage({super.key, required this.order});
  final OrderDataEntity? order;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UserOrderTrackingDetailCubit(oderId: order?.id)..loadData(),
      child: Builder(
        builder: (context) {
          return const Scaffold(
            appBar: AppAppBar(
              title: 'Thông tin vận chuyển',
            ),
            body: UserOrderTrackingDetailBody(),
          );
        },
      ),
    );
  }
}
