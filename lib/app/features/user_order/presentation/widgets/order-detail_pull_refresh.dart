import 'package:app_ui_kit/components/refresh/app_pull_down_refresh.dart';
import 'package:hlshop/all_file/all_file.dart';

class OrderDetailPullRefresh extends StatelessWidget {
  const OrderDetailPullRefresh({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppPullDownRefresh(
      refresh: () {
        context.read<UserOrderDetailCubit>().loadData();
      },
      child: child,
    );
  }
}
